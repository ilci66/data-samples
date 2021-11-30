create table drawing_object_relation (
  relation_uid UUID NOT NULL PRIMARY KEY,
  object_uid UUID REFERENCES mock_object(object_uid),
  drawing_uid UUID REFERENCES mock_drawing(drawing_uid)
);