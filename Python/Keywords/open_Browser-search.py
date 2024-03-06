# custom_keywords.py

import csv

from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

def open_and_search(url, search_query, search_button, product_elements):
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.open_browser(url, 'chrome')
    selenium_lib.maximize_browser_window()
    selenium_lib.set_selenium_implicit_wait(20)
    selenium_lib.input_text(search_query, 'Laptop')
    selenium_lib.click_element(search_button)
    selenium_lib.wait_until_element_is_visible(product_elements)