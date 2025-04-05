;; inherits: go
;; extends
((
  [
    (raw_string_literal_content)
    (interpreted_string_literal_content)
  ] @string
  (#match? @string "^[\n\s\t]*(SELECT|select|insert|INSERT|update|UPDATE|delete|DELETE).*")
)@injection.content (#set! injection.language "sql") (#set! "priority" 135) )

((
  [
    (raw_string_literal_content)
    (interpreted_string_literal_content)
  ] @string
  (#match? @string "(jsonb_build_object|jsonb_set|to_jsonb).*")
)@injection.content (#set! injection.language "sql") (#set! "priority" 135) )
