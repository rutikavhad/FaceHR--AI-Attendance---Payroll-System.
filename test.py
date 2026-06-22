import pickle

with open("faces.pkl","rb") as f:
    db = pickle.load(f)

print("TOTAL FACES =", len(db))

for k in db.keys():
    print("UID =", k)