#bin/bash
import requests
from bs4 import BeautifulSoup
from json import dumps, load 
import argparse
import os
 
home_dir = os.path.expanduser("~")

DIR = "/home/sus/.config/polybar/scripts/word-of-the-day/"

def check_internet():
    try:
        requests.get("https://motherfuckingwebsite.com")
    except Exception:
       return False
    
    return True


def update():
    scrapped_data = Scraper().generate() 

    with open(f"{DIR}data.json", "r+") as file:
        try:
            data = load(file) 
        except Exception:
            data = {}

    local_word = data.get("word")
    scrapped_word = scrapped_data.get("word") 

    if local_word != scrapped_word:
        with open(f"{DIR}data.json", "w") as file:
            file.write(dumps(scrapped_data, indent=4))

    return 


class Scraper:
    def __init__(self):
        self.MAIN_URL = "https://www.merriam-webster.com/word-of-the-day"
        self.AUDIO_URL = "https://rss.art19.com/episodes/"

    def scrape_data(self):
        response = requests.get(self.MAIN_URL)
        soup = BeautifulSoup(response.text, "html.parser")

        word_element = soup.find(class_="word-header-txt")
        self.word = word_element.get_text(strip=True)

        meaning_element = soup.find("p")
        self.meaning = meaning_element.get_text(" ", strip=True)

        example_elements = soup.find_all("p")[1:]
        self.example = ""
        for example_element in example_elements:
            if example_element.get_text(strip=True) == "See the entry >":
                break

            self.example += "\n\n" + "Example - " + (example_element.get_text(" ", strip=True))[3:]

    def generate(self):
        self.scrape_data()

        scraped_data = {
            "word": self.word,
            "meaning": self.meaning,
            "example": self.example,
        }

        return scraped_data

parser = argparse.ArgumentParser()
parser.add_argument("-w", "--word", help="To get today's word", 
                    action="store_true") 
args = parser.parse_args()

if args.word:
    if check_internet() == True:
        update()
    
    with open(f"{DIR}data.json", "r+") as file:
        data = load(file)
    
    word = data.get("word").capitalize()

    print(word)


