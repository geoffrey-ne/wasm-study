(module
  (table 0 anyfunc)
  (memory $0 1)
  (export "memory" (memory $0))
  (export "fibonacci" (func $fibonacci))
  (func $fibonacci (param $0 i32) (result i32)
    (block $label$0
      (block $label$1
        (br_if $label$1
          (i32.eqz
            (get_local $0)
          )
        )
        (br_if $label$0
          (i32.ne
            (get_local $0)
            (i32.const 1)
          )
        )
        (return
          (i32.const 1)
        )
      )
      (return
        (i32.const 0)
      )
    )
    (i32.add
      (call $fibonacci
        (i32.add
          (get_local $0)
          (i32.const -1)
        )
      )
      (call $fibonacci
        (i32.add
          (get_local $0)
          (i32.const -2)
        )
      )
    )
  )
)