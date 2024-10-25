import random
from datetime import datetime, timedelta

first_name = ["Jon", "Chuck", "Hannah", "Irene", "Flint", "Randall", "Theo", 
              "James", "Bob", "Bobert", "Bartholomew", "Wendy", "Rebecca",
              "Katherine", "Megan", "Beverly", "Randa", "Kyle", "Erica"]

last_name = ["Aardema", "Adams", "Bridgerton", "Beckstead", "Bartl", "Cox", "Christensen",
             "Deeds", "Sandler", "White", "Fring", "Pinkman", "Knope", "Swanson", "Scott",
             "Ponce-Fisk-Alarmington", "Seagull", "Weeks", "Caputo", "Wrangler-Silentfeet"]



def generate_date(start_date, end_date):
    time_between = end_date - start_date
    days_between = time_between.days
    random_days = random.randrange(days_between)
    random_date = start_date + timedelta(days=random_days)
    return random_date


#Generate sample survey data showing customers' favorite animals 
for i in range(1, 501):
    survey_id = i
    survey_date = generate_date(datetime(2020, 1, 2), datetime(2024, 10, 12))
    truncated_date = survey_date.strftime('%Y-%m-%d')
    customer_name = f"{random.choice(first_name)} {random.choice(last_name)}"
    favorite_animal = random.randint(1,20)
    data_record = (
                        f"({survey_id}, "
                        f"'{truncated_date}', "
                        f"'{customer_name}', "
                        f"{favorite_animal}),"
                    )
    print(data_record)