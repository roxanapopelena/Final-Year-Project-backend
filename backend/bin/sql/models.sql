CREATE TABLE "models"(
    id              SERIAL PRIMARY KEY,
    "model"         CHARACTER(64),
    "colorId"       INTEGER,
    "rangeId"        INTEGER,
    "url"          CHARACTER(64),
    FOREIGN KEY ("rangeId")  REFERENCES "range" (id),
    FOREIGN KEY ("colorId")  REFERENCES "colors" (id)
);
