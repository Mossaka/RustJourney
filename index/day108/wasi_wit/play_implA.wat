(module
  (type (;0;) (func (param i32) (result i64)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32) (result i64)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h3f3c7d60d98f8ca9E (type 6)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type 5)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type 5)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 1)))
  (func $__wasm_call_ctors (type 7)
    call $__wasilibc_initialize_environ_eagerly)
  (func $negate (type 8) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
        end
        i32.const 1048576
        i32.const 25
        i32.const 1048632
        call $_ZN3std9panicking11begin_panic17hc174cdc7bf8b4eacE
        unreachable
      end
      i32.const 0
      local.set 1
    end
    local.get 1)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdf654cc4a6e6a9f8E (type 0) (param i32) (result i64)
    i64.const -8867930603987265711)
  (func $_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h13d4d45c51940704E (type 1) (param i32))
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h0e2fb88f6d1d75d6E (type 1) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hf97b8a4a92d72b05E
    unreachable)
  (func $_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hf97b8a4a92d72b05E (type 9) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 8
    i32.add
    i32.const 1048648
    i32.const 0
    local.get 2
    call $_ZN3std9panicking20rust_panic_with_hook17h03f0429c6d383fb4E
    unreachable)
  (func $_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h035f1672be97cb5eE (type 1) (param i32))
  (func $_ZN3std9panicking11begin_panic17hc174cdc7bf8b4eacE (type 9) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    call $_ZN4core5panic8location8Location6caller17h24a125b91919d97fE
    i32.store offset=8
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h0e2fb88f6d1d75d6E
    unreachable)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h5dfdf36a35600a9aE (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=4
        local.set 3
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store offset=4
        local.get 1
        local.get 2
        i32.store
        local.get 0
        i32.const 1048668
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        return
      end
      call $_ZN3std7process5abort17he9dca8e9e81ea201E
      unreachable
    end
    i32.const 8
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
    unreachable)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17ha9bdbbfdea0e322bE (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      br_if 0 (;@1;)
      call $_ZN3std7process5abort17he9dca8e9e81ea201E
      unreachable
    end
    local.get 0
    i32.const 1048668
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $__rust_alloc (type 5) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 9) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $__rust_alloc_error_handler (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_oom
    return)
  (func $_ZN3std9panicking12default_hook17h873b29f0e145cb1aE (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051024
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i64.const 1
          i64.store offset=1051024
          br 1 (;@2;)
        end
        i32.const 0
        i32.load offset=1051028
        i32.const 1
        i32.gt_u
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1050984
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 3 (;@1;)
          end
          local.get 1
          i32.const 72
          i32.add
          i32.const 1048808
          i32.const 14
          call $_ZN3std3env7_var_os17hc7812c6e28cb7a1aE
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=72
              local.tee 3
              br_if 0 (;@5;)
              i32.const 5
              local.set 2
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=76
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 80
                    i32.add
                    i32.load
                    i32.const -1
                    i32.add
                    br_table 0 (;@8;) 2 (;@6;) 2 (;@6;) 1 (;@7;) 2 (;@6;)
                  end
                  local.get 3
                  i32.load8_u
                  i32.const 48
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 4
                  local.set 2
                  i32.const 1
                  local.set 5
                  br 2 (;@5;)
                end
                local.get 3
                i32.load align=1
                i32.const 1819047270
                i32.ne
                br_if 0 (;@6;)
                i32.const 1
                local.set 2
                i32.const 3
                local.set 5
                br 1 (;@5;)
              end
              i32.const 0
              local.set 2
              i32.const 2
              local.set 5
            end
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            i32.const 1
            call $__rust_dealloc
          end
          i32.const 0
          i32.const 1
          local.get 5
          local.get 2
          i32.const 5
          i32.eq
          local.tee 3
          select
          i32.store offset=1050984
          i32.const 4
          local.get 2
          local.get 3
          select
          local.set 2
          br 2 (;@1;)
        end
        i32.const 4
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store8 offset=27
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                call $_ZN4core5panic10panic_info9PanicInfo8location17hf914df1247871dbaE
                local.tee 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.store offset=28
                local.get 1
                i32.const 16
                i32.add
                local.get 0
                call $_ZN4core5panic10panic_info9PanicInfo7payload17h8ebd31f3660fa9e6E
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.load offset=16
                      local.tee 2
                      local.get 1
                      i32.load offset=20
                      i32.load offset=12
                      call_indirect (type 0)
                      i64.const -8867930603987265711
                      i64.ne
                      br_if 0 (;@9;)
                      local.get 2
                      br_if 1 (;@8;)
                    end
                    local.get 1
                    i32.const 8
                    i32.add
                    local.get 0
                    call $_ZN4core5panic10panic_info9PanicInfo7payload17h8ebd31f3660fa9e6E
                    i32.const 12
                    local.set 0
                    i32.const 1049436
                    local.set 3
                    block  ;; label = @9
                      local.get 1
                      i32.load offset=8
                      local.tee 2
                      local.get 1
                      i32.load offset=12
                      i32.load offset=12
                      call_indirect (type 0)
                      i64.const -4033351392962449136
                      i64.ne
                      br_if 0 (;@9;)
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.load
                      local.set 0
                      local.get 2
                      i32.load
                      local.set 3
                    end
                    local.get 1
                    local.get 3
                    i32.store offset=32
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 2
                  i32.load
                  i32.store offset=32
                  local.get 2
                  i32.load offset=4
                  local.set 0
                end
                local.get 1
                local.get 0
                i32.store offset=36
                i32.const 0
                i32.load offset=1051016
                br_if 1 (;@5;)
                i32.const 0
                i32.const -1
                i32.store offset=1051016
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1051020
                  local.tee 0
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  local.get 1
                  call $_ZN3std6thread6Thread3new17h0c36fb15e9cfdfb5E
                  local.tee 0
                  i32.store offset=1051020
                end
                local.get 0
                local.get 0
                i32.load
                local.tee 2
                i32.const 1
                i32.add
                i32.store
                local.get 2
                i32.const -1
                i32.le_s
                br_if 2 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1051016
                i32.const 1
                i32.add
                i32.store offset=1051016
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 2
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  i32.const -1
                  i32.add
                  local.set 3
                  local.get 0
                  i32.load offset=16
                  local.set 2
                end
                local.get 1
                local.get 3
                i32.const 9
                local.get 2
                select
                i32.store offset=44
                local.get 1
                local.get 2
                i32.const 1049448
                local.get 2
                select
                i32.store offset=40
                local.get 1
                local.get 1
                i32.const 27
                i32.add
                i32.store offset=60
                local.get 1
                local.get 1
                i32.const 28
                i32.add
                i32.store offset=56
                local.get 1
                local.get 1
                i32.const 32
                i32.add
                i32.store offset=52
                local.get 1
                local.get 1
                i32.const 40
                i32.add
                i32.store offset=48
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1051033
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=1051033
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1051008
                    i32.const 1
                    i32.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    i64.const 1
                    i64.store offset=1051008
                    br 1 (;@7;)
                  end
                  i32.const 0
                  i32.load offset=1051012
                  local.set 2
                  i32.const 0
                  i32.const 0
                  i32.store offset=1051012
                  local.get 2
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.const 48
                i32.add
                local.get 1
                i32.const 72
                i32.add
                i32.const 1049460
                call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h488d8c34a7af59a9E
                i32.const 0
                local.set 3
                i32.const 0
                local.set 2
                br 4 (;@2;)
              end
              i32.const 1049188
              i32.const 43
              i32.const 1049420
              call $_ZN4core9panicking5panic17he5870e8f24d6369dE
              unreachable
            end
            i32.const 1048822
            i32.const 16
            local.get 1
            i32.const 72
            i32.add
            i32.const 1049376
            i32.const 1049292
            call $_ZN4core6result13unwrap_failed17h7bcc0d7a0760c7f6E
            unreachable
          end
          unreachable
          unreachable
        end
        local.get 2
        i32.load8_u offset=8
        local.set 5
        i32.const 1
        local.set 3
        local.get 2
        i32.const 1
        i32.store8 offset=8
        local.get 1
        local.get 5
        i32.const 1
        i32.and
        local.tee 5
        i32.store8 offset=71
        local.get 5
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051004
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17he0b2e8914abe8c9eE
          local.set 3
        end
        local.get 1
        i32.const 48
        i32.add
        local.get 2
        i32.const 12
        i32.add
        i32.const 1049500
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h488d8c34a7af59a9E
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1051004
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17he0b2e8914abe8c9eE
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.store8 offset=9
        end
        i32.const 1
        local.set 3
        i32.const 0
        i32.const 1
        i32.store8 offset=1051033
        local.get 2
        i32.const 0
        i32.store8 offset=8
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051008
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.get 2
          i32.store offset=1051012
          i32.const 0
          i32.const 1
          i32.store offset=1051008
          br 1 (;@2;)
        end
        i32.const 0
        i32.load offset=1051012
        local.set 5
        i32.const 0
        local.get 2
        i32.store offset=1051012
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.load
        local.tee 4
        i32.const -1
        i32.add
        i32.store
        i32.const 1
        local.set 3
        local.get 4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd82bd8ee7fc8fd71E
      end
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load
        local.tee 5
        i32.const -1
        i32.add
        i32.store
        local.get 5
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h89e36e5ce0c66b3eE
      end
      block  ;; label = @2
        local.get 3
        i32.const -1
        i32.xor
        local.get 2
        i32.const 0
        i32.ne
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.load
        local.tee 0
        i32.const -1
        i32.add
        i32.store
        local.get 0
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd82bd8ee7fc8fd71E
      end
      local.get 1
      i32.const 96
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 92
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 88
    i32.add
    i32.const 1048684
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=76 align=4
    local.get 1
    i32.const 1050208
    i32.store offset=72
    local.get 1
    i32.const 71
    i32.add
    local.get 1
    i32.const 72
    i32.add
    call $_ZN4core9panicking13assert_failed17hcd8758e5d22e4120E
    unreachable)
  (func $_ZN4core9panicking13assert_failed17hcd8758e5d22e4120E (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1048838
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    i32.const 0
    local.get 2
    i32.const 1049308
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049308
    local.get 2
    i32.const 8
    i32.add
    i32.const 1050264
    call $_ZN4core9panicking19assert_failed_inner17h387fb52f23c0e68bE
    unreachable)
  (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7bd728bcba3eb351E (type 1) (param i32))
  (func $_ZN3std9panicking11panic_count17is_zero_slow_path17he0b2e8914abe8c9eE (type 10) (result i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051024
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1051028
      i32.eqz
      return
    end
    i32.const 0
    i64.const 1
    i64.store offset=1051024
    i32.const 1)
  (func $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h69bbefafa599f43cE (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hd8967a1054efe59eE (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8e978caf62299e0dE (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr87drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$GT$17h87042063d77633c3E (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE (type 9) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 2
      local.get 1
      local.get 2
      i32.gt_u
      select
      local.tee 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 3
          local.get 4
          i32.store offset=20
          local.get 3
          local.get 0
          i32.load
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 3
        i32.const 0
        i32.store offset=16
      end
      local.get 3
      local.get 1
      i32.const 1
      local.get 3
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h7ec3d58a84939ee3E
      block  ;; label = @2
        local.get 3
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
        unreachable
      end
      local.get 3
      i32.load offset=4
      local.set 2
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 2
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h6ea290383dd14b9cE
    unreachable)
  (func $_ZN5alloc7raw_vec11finish_grow17h7ec3d58a84939ee3E (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 4
                      local.get 1
                      i32.const 0
                      i32.lt_s
                      br_if 1 (;@8;)
                      local.get 3
                      i32.load
                      local.tee 5
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=4
                      local.tee 3
                      br_if 5 (;@4;)
                      local.get 1
                      br_if 3 (;@6;)
                      local.get 2
                      local.set 3
                      br 4 (;@5;)
                    end
                    local.get 0
                    local.get 1
                    i32.store offset=4
                    i32.const 1
                    local.set 4
                  end
                  i32.const 0
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 1
                br_if 0 (;@6;)
                local.get 2
                local.set 3
                br 1 (;@5;)
              end
              local.get 1
              local.get 2
              call $__rust_alloc
              local.set 3
            end
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 5
          local.get 3
          local.get 2
          local.get 1
          call $__rust_realloc
          local.tee 3
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store offset=4
      i32.const 0
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf53b6339646d9978E (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 3
      local.get 1
      local.get 3
      i32.gt_u
      select
      local.tee 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 2
          local.get 4
          i32.store offset=20
          local.get 2
          local.get 0
          i32.load
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=16
      end
      local.get 2
      local.get 1
      i32.const 1
      local.get 2
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h7ec3d58a84939ee3E
      block  ;; label = @2
        local.get 2
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
        unreachable
      end
      local.get 2
      i32.load offset=4
      local.set 3
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h6ea290383dd14b9cE
    unreachable)
  (func $_ZN3std6thread6Thread3new17h0c36fb15e9cfdfb5E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1051032
    local.set 3
    i32.const 0
    i32.const 1
    i32.store8 offset=1051032
    local.get 2
    local.get 3
    i32.store8 offset=7
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i64.load offset=1050968
            local.tee 4
            i64.const -1
            i64.eq
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            i64.const 1
            i64.add
            i64.store offset=1050968
            local.get 4
            i64.const 0
            i64.ne
            br_if 1 (;@3;)
            i32.const 1049188
            i32.const 43
            i32.const 1048792
            call $_ZN4core9panicking5panic17he5870e8f24d6369dE
            unreachable
          end
          i32.const 0
          i32.const 0
          i32.store8 offset=1051032
          local.get 2
          i32.const 28
          i32.add
          i32.const 0
          i32.store
          local.get 2
          i32.const 1048684
          i32.store offset=24
          local.get 2
          i64.const 1
          i64.store offset=12 align=4
          local.get 2
          i32.const 1048768
          i32.store offset=8
          local.get 2
          i32.const 8
          i32.add
          i32.const 1048776
          call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
          unreachable
        end
        i32.const 0
        i32.const 0
        i32.store8 offset=1051032
        i32.const 32
        i32.const 8
        call $__rust_alloc
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i64.const 0
        i64.store offset=24
        local.get 3
        local.get 1
        i32.store offset=20
        local.get 3
        local.get 0
        i32.store offset=16
        local.get 3
        local.get 4
        i64.store offset=8
        local.get 3
        i64.const 4294967297
        i64.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 3
        return
      end
      local.get 2
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 1048684
      i32.store
      local.get 2
      i64.const 1
      i64.store offset=12 align=4
      local.get 2
      i32.const 1050208
      i32.store offset=8
      local.get 2
      i32.const 7
      i32.add
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core9panicking13assert_failed17hcd8758e5d22e4120E
      unreachable
    end
    i32.const 32
    i32.const 8
    call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
    unreachable)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h89e36e5ce0c66b3eE (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=16
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store8
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.const 8
      call $__rust_dealloc
    end)
  (func $_ZN3std3env11current_dir17h1505700ef8b99c4dE (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 512
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 512
            i32.const 1
            call $__rust_alloc
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 512
            i32.store offset=4
            local.get 1
            local.get 3
            i32.store
            local.get 3
            i32.const 512
            call $getcwd
            br_if 1 (;@3;)
            i32.const 512
            local.set 2
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051532
              local.tee 4
              i32.const 68
              i32.ne
              br_if 0 (;@5;)
              i32.const 512
              local.set 2
              loop  ;; label = @6
                local.get 1
                local.get 2
                i32.store offset=8
                local.get 1
                local.get 2
                i32.const 1
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
                local.get 1
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=4
                local.tee 2
                call $getcwd
                br_if 3 (;@3;)
                i32.const 0
                i32.load offset=1051532
                local.tee 4
                i32.const 68
                i32.eq
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i64.const 1
            i64.store align=4
            local.get 0
            i32.const 8
            i32.add
            local.get 4
            i32.store
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 2
            i32.const 1
            call $__rust_dealloc
            br 2 (;@2;)
          end
          i32.const 512
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
          unreachable
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load8_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 6
          i32.const 0
          local.set 4
          loop  ;; label = @4
            local.get 6
            local.get 4
            i32.add
            local.set 7
            local.get 4
            i32.const 1
            i32.add
            local.tee 5
            local.set 4
            local.get 7
            i32.load8_u
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 5
        i32.store offset=8
        block  ;; label = @3
          local.get 2
          local.get 5
          i32.le_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              br_if 0 (;@5;)
              i32.const 1
              local.set 4
              local.get 3
              local.get 2
              i32.const 1
              call $__rust_dealloc
              br 1 (;@4;)
            end
            local.get 3
            local.get 2
            i32.const 1
            local.get 5
            call $__rust_realloc
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 1
          local.get 5
          i32.store offset=4
          local.get 1
          local.get 4
          i32.store
        end
        local.get 0
        local.get 1
        i64.load
        i64.store offset=4 align=4
        local.get 0
        i32.const 0
        i32.store
        local.get 0
        i32.const 12
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
    unreachable)
  (func $_ZN3std3env7_var_os17hc7812c6e28cb7a1aE (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    call $_ZN3std3ffi5c_str7CString3new17h9991ff8d87965ac2E
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.const 20
            i32.add
            i32.load
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 16
            i32.add
            i32.load
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 1
            call $__rust_dealloc
          end
          local.get 0
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 3
        i32.const 16
        i32.add
        i32.load
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=12
            local.tee 5
            call $getenv
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.load8_u
                br_if 0 (;@6;)
                i32.const 1
                local.set 2
                i32.const 0
                local.set 1
                br 1 (;@5;)
              end
              local.get 6
              i32.const 1
              i32.add
              local.set 7
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 7
                local.get 1
                i32.add
                local.set 2
                local.get 1
                i32.const 1
                i32.add
                local.tee 8
                local.set 1
                local.get 2
                i32.load8_u
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.const 0
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 8
                  br_if 1 (;@6;)
                  i32.const 1
                  local.set 2
                  br 2 (;@5;)
                end
                call $_ZN5alloc7raw_vec17capacity_overflow17h6ea290383dd14b9cE
                unreachable
              end
              local.get 8
              i32.const 1
              call $__rust_alloc
              local.tee 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 8
              local.set 1
            end
            local.get 2
            local.get 6
            local.get 1
            call $memcpy
            local.set 2
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.store
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            local.get 2
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.store
        end
        local.get 5
        i32.const 0
        i32.store8
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 4
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 8
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
    unreachable)
  (func $_ZN3std3ffi5c_str7CString3new17h9991ff8d87965ac2E (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.tee 5
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.const 1
          call $__rust_alloc
          local.tee 4
          i32.eqz
          br_if 2 (;@1;)
        end
        i32.const 0
        local.set 6
        local.get 3
        i32.const 0
        i32.store offset=24
        local.get 3
        local.get 5
        i32.store offset=20
        local.get 3
        local.get 4
        i32.store offset=16
        block  ;; label = @3
          local.get 2
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.const 0
          i32.const -1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
          local.get 3
          i32.load offset=16
          local.set 4
          local.get 3
          i32.load offset=24
          local.set 6
        end
        local.get 4
        local.get 6
        i32.add
        local.get 1
        local.get 2
        call $memcpy
        drop
        local.get 3
        local.get 6
        local.get 2
        i32.add
        local.tee 5
        i32.store offset=24
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 8
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 8
            i32.add
            i32.const 0
            local.get 4
            local.get 5
            call $_ZN4core5slice6memchr19memchr_general_case17hda44e18663407865E
            local.get 3
            i32.load offset=12
            local.set 5
            local.get 3
            i32.load offset=8
            local.set 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            i32.const 0
            local.set 2
            i32.const 1
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                local.get 2
                i32.add
                i32.load8_u
                br_if 0 (;@6;)
                local.get 2
                local.set 5
                br 3 (;@3;)
              end
              local.get 5
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.ne
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          local.set 6
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            br_if 0 (;@4;)
            local.get 3
            i32.const 32
            i32.add
            i32.const 8
            i32.add
            local.get 3
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            local.get 3
            i64.load offset=16
            i64.store offset=32
            local.get 3
            local.get 3
            i32.const 32
            i32.add
            call $_ZN3std3ffi5c_str7CString18from_vec_unchecked17hff77c89583f53d04E
            local.get 0
            local.get 3
            i64.load
            i64.store offset=4 align=4
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.get 5
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          i64.load offset=16
          i64.store align=4
          local.get 0
          i32.const 16
          i32.add
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
          i32.const 1
          local.set 2
        end
        local.get 0
        local.get 2
        i32.store
        local.get 3
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h6ea290383dd14b9cE
      unreachable
    end
    local.get 5
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
    unreachable)
  (func $_ZN3std3ffi5c_str7CString18from_vec_unchecked17hff77c89583f53d04E (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=8
                local.tee 4
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                i32.const 1
                i32.add
                local.tee 3
                local.get 4
                i32.lt_u
                br_if 4 (;@2;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 24
                    i32.add
                    i32.const 1
                    i32.store
                    local.get 2
                    local.get 4
                    i32.store offset=20
                    local.get 2
                    local.get 1
                    i32.load
                    i32.store offset=16
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.const 0
                  i32.store offset=16
                end
                local.get 2
                local.get 3
                i32.const 1
                local.get 2
                i32.const 16
                i32.add
                call $_ZN5alloc7raw_vec11finish_grow17h7ec3d58a84939ee3E
                local.get 2
                i32.load
                i32.const 1
                i32.eq
                br_if 1 (;@5;)
                local.get 2
                i32.load offset=4
                local.set 5
                local.get 1
                i32.const 4
                i32.add
                local.get 3
                i32.store
                local.get 1
                local.get 5
                i32.store
              end
              block  ;; label = @6
                local.get 4
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                local.get 4
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf53b6339646d9978E
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.set 3
                local.get 1
                i32.load offset=8
                local.set 4
              end
              local.get 1
              local.get 4
              i32.const 1
              i32.add
              local.tee 5
              i32.store offset=8
              local.get 1
              i32.load
              local.tee 1
              local.get 4
              i32.add
              i32.const 0
              i32.store8
              local.get 3
              local.get 5
              i32.gt_u
              br_if 1 (;@4;)
              local.get 1
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            i32.load offset=4
            local.get 1
            call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
            unreachable
          end
          block  ;; label = @4
            local.get 5
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            local.get 1
            local.get 3
            i32.const 1
            call $__rust_dealloc
            br 1 (;@3;)
          end
          local.get 1
          local.get 3
          i32.const 1
          local.get 5
          call $__rust_realloc
          local.tee 4
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h6ea290383dd14b9cE
      unreachable
    end
    local.get 5
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h039267962f28154aE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h7539079084ec2867E)
  (func $_ZN3std3sys4wasi17decode_error_kind17h03ac877842f91e06E (type 8) (param i32) (result i32)
    (local i32)
    i32.const 40
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.const 65535
                                      i32.and
                                      i32.const -2
                                      i32.add
                                      br_table 2 (;@15;) 7 (;@10;) 6 (;@11;) 16 (;@1;) 13 (;@4;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 5 (;@12;) 0 (;@17;) 1 (;@16;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 12 (;@5;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 9 (;@8;) 10 (;@7;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 8 (;@9;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 15 (;@2;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 14 (;@3;) 4 (;@13;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 2 (;@15;) 3 (;@14;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 16 (;@1;) 11 (;@6;) 16 (;@1;)
                                    end
                                    i32.const 2
                                    return
                                  end
                                  i32.const 3
                                  return
                                end
                                i32.const 1
                                return
                              end
                              i32.const 11
                              return
                            end
                            i32.const 7
                            return
                          end
                          i32.const 6
                          return
                        end
                        i32.const 9
                        return
                      end
                      i32.const 8
                      return
                    end
                    i32.const 0
                    return
                  end
                  i32.const 35
                  return
                end
                i32.const 20
                return
              end
              i32.const 22
              return
            end
            i32.const 12
            return
          end
          i32.const 13
          return
        end
        i32.const 36
        return
      end
      i32.const 38
      local.set 1
    end
    local.get 1)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha2f2b8185449260eE (type 0) (param i32) (result i64)
    i64.const 2560553824161606047)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb0574dd988f9b33fE (type 0) (param i32) (result i64)
    i64.const -4033351392962449136)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hff7214791142b36cE (type 0) (param i32) (result i64)
    i64.const -8867930603987265711)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h97635be0c5176ed0E (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 5
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
      local.get 4
      i32.load
      local.set 5
    end
    local.get 1
    i32.load
    local.get 5
    i32.add
    local.get 2
    local.get 3
    call $memcpy
    drop
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 4
    local.get 5
    local.get 3
    i32.add
    i32.store
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h876ed54dc6753378E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 3
            i32.shl
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const -8
            i32.add
            local.tee 5
            i32.const 3
            i32.shr_u
            i32.const 1
            i32.add
            local.tee 6
            i32.const 7
            i32.and
            local.set 7
            local.get 5
            i32.const 56
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 0
            local.set 8
            local.get 2
            local.set 6
            br 2 (;@2;)
          end
          local.get 1
          i32.const 4
          i32.add
          local.set 9
          local.get 1
          i32.const 8
          i32.add
          local.set 5
          i32.const 0
          local.set 8
          br 2 (;@1;)
        end
        local.get 2
        i32.const 60
        i32.add
        local.set 5
        i32.const 0
        local.set 8
        i32.const 0
        local.get 6
        i32.const 1073741816
        i32.and
        i32.sub
        local.set 6
        loop  ;; label = @3
          local.get 5
          i32.load
          local.get 5
          i32.const -8
          i32.add
          i32.load
          local.get 5
          i32.const -16
          i32.add
          i32.load
          local.get 5
          i32.const -24
          i32.add
          i32.load
          local.get 5
          i32.const -32
          i32.add
          i32.load
          local.get 5
          i32.const -40
          i32.add
          i32.load
          local.get 5
          i32.const -48
          i32.add
          i32.load
          local.get 5
          i32.const -56
          i32.add
          i32.load
          local.get 8
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          local.set 8
          local.get 5
          i32.const 64
          i32.add
          local.set 5
          local.get 6
          i32.const 8
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const -60
        i32.add
        local.set 6
      end
      block  ;; label = @2
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 7
        i32.sub
        local.set 5
        local.get 6
        i32.const 4
        i32.add
        local.set 6
        loop  ;; label = @3
          local.get 6
          i32.load
          local.get 8
          i32.add
          local.set 8
          local.get 5
          i32.const 1
          i32.add
          local.tee 7
          local.get 5
          i32.ge_u
          local.set 10
          local.get 7
          local.set 5
          local.get 6
          i32.const 8
          i32.add
          local.set 6
          local.get 10
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.const 4
      i32.add
      local.tee 9
      i32.load
      local.get 1
      i32.const 8
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.sub
      local.get 8
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 6
      local.get 8
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
    end
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 4
      i32.add
      local.set 3
      local.get 5
      i32.load
      local.set 5
      local.get 1
      i32.const 8
      i32.add
      local.set 10
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 7
        block  ;; label = @3
          local.get 9
          i32.load
          local.get 5
          i32.sub
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          local.get 6
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
          local.get 10
          i32.load
          local.set 5
        end
        local.get 1
        i32.load
        local.get 5
        i32.add
        local.get 7
        local.get 6
        call $memcpy
        drop
        local.get 10
        local.get 5
        local.get 6
        i32.add
        local.tee 5
        i32.store
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    local.get 8
    i32.store offset=4)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17hf653219b47ce7809E (type 8) (param i32) (result i32)
    i32.const 1)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h46ff9168b2f8fa0aE (type 12) (param i32 i32 i32) (result i64)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.const 8
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
      local.get 3
      i32.load
      local.set 4
    end
    local.get 0
    i32.load
    local.get 4
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 3
    local.get 4
    local.get 2
    i32.add
    i32.store
    i64.const 4)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17hdb6e4c9933fdce8fE (type 0) (param i32) (result i64)
    i64.const 4)
  (func $_ZN3std2io5Write9write_all17h25c290ba11a9c807E (type 12) (param i32 i32 i32) (result i64)
    (local i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i64.const 4
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i64.const 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 3
        local.get 2
        i32.store offset=4
        local.get 3
        local.get 1
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 2
              local.get 3
              i32.const 1
              call $_ZN4wasi13lib_generated8fd_write17h0ec012d1fa633378E
              local.tee 5
              i64.const 65535
              i64.and
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                local.tee 6
                br_if 0 (;@6;)
                i32.const 1048876
                i64.extend_i32_u
                i64.const 32
                i64.shl
                i64.const 5888
                i64.or
                local.set 5
                i64.const 2
                local.set 4
                br 5 (;@1;)
              end
              local.get 2
              local.get 6
              i32.ge_u
              br_if 1 (;@4;)
              local.get 6
              local.get 2
              i32.const 1048928
              call $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E
              unreachable
            end
            local.get 3
            local.get 5
            i64.const 16
            i64.shr_u
            i64.store16 offset=14
            local.get 3
            i32.const 14
            i32.add
            call $_ZN4wasi5error5Error9raw_error17h26a67d0183ef908dE
            local.tee 6
            i32.const 65535
            i32.and
            call $_ZN3std3sys4wasi17decode_error_kind17h03ac877842f91e06E
            i32.const 255
            i32.and
            i32.const 35
            i32.eq
            br_if 1 (;@3;)
            local.get 6
            i64.extend_i32_u
            i64.const 65535
            i64.and
            i64.const 32
            i64.shl
            local.set 5
            i64.const 0
            local.set 4
            br 3 (;@1;)
          end
          local.get 1
          local.get 6
          i32.add
          local.set 1
          local.get 2
          local.get 6
          i32.sub
          local.set 2
        end
        local.get 2
        br_if 0 (;@2;)
      end
      i64.const 0
      local.set 5
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
    local.get 4
    i64.or)
  (func $_ZN3std2io5Write18write_all_vectored17h58c503d2309a5b25E (type 12) (param i32 i32 i32) (result i64)
    (local i32 i32 i32 i32 i64 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        local.get 1
        i32.const 4
        i32.add
        local.set 5
        local.get 2
        i32.const 3
        i32.shl
        i32.const -8
        i32.add
        i32.const 3
        i32.shr_u
        i32.const 1
        i32.add
        local.set 6
        i32.const 0
        local.set 4
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.load
            br_if 1 (;@3;)
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 6
            local.get 4
            i32.const 1
            i32.add
            local.tee 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          local.set 4
        end
        local.get 4
        local.get 2
        i32.gt_u
        br_if 1 (;@1;)
      end
      i64.const 4
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.sub
              local.tee 6
              br_if 0 (;@5;)
              i64.const 0
              local.set 8
              br 1 (;@4;)
            end
            local.get 1
            local.get 4
            i32.const 3
            i32.shl
            i32.add
            local.set 4
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 2
                  local.get 4
                  local.get 6
                  call $_ZN4wasi13lib_generated8fd_write17h0ec012d1fa633378E
                  local.tee 8
                  i64.const 65535
                  i64.and
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 8
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    local.tee 9
                    br_if 0 (;@8;)
                    i32.const 1048876
                    i64.extend_i32_u
                    i64.const 32
                    i64.shl
                    i64.const 5888
                    i64.or
                    local.set 8
                    i64.const 2
                    local.set 7
                    br 4 (;@4;)
                  end
                  local.get 4
                  i32.const 4
                  i32.add
                  local.set 5
                  local.get 6
                  i32.const 3
                  i32.shl
                  i32.const -8
                  i32.add
                  i32.const 3
                  i32.shr_u
                  i32.const 1
                  i32.add
                  local.set 10
                  i32.const 0
                  local.set 2
                  i32.const 0
                  local.set 1
                  loop  ;; label = @8
                    local.get 5
                    i32.load
                    local.get 1
                    i32.add
                    local.tee 11
                    local.get 9
                    i32.gt_u
                    br_if 2 (;@6;)
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 11
                    local.set 1
                    local.get 10
                    local.get 2
                    i32.const 1
                    i32.add
                    local.tee 2
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 11
                  local.set 1
                  local.get 10
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 3
                local.get 8
                i64.const 16
                i64.shr_u
                i64.store16 offset=8
                local.get 3
                i32.const 8
                i32.add
                call $_ZN4wasi5error5Error9raw_error17h26a67d0183ef908dE
                local.tee 5
                i32.const 65535
                i32.and
                call $_ZN3std3sys4wasi17decode_error_kind17h03ac877842f91e06E
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 1 (;@5;)
                local.get 5
                i64.extend_i32_u
                i64.const 65535
                i64.and
                i64.const 32
                i64.shl
                local.set 8
                i64.const 0
                local.set 7
                br 2 (;@4;)
              end
              local.get 6
              local.get 2
              i32.lt_u
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 6
                local.get 2
                i32.sub
                local.tee 6
                br_if 0 (;@6;)
                i64.const 0
                local.set 8
                br 2 (;@4;)
              end
              local.get 4
              local.get 2
              i32.const 3
              i32.shl
              i32.add
              local.tee 4
              i32.load offset=4
              local.tee 2
              local.get 9
              local.get 1
              i32.sub
              local.tee 5
              i32.lt_u
              br_if 3 (;@2;)
              local.get 4
              i32.const 4
              i32.add
              local.get 2
              local.get 5
              i32.sub
              i32.store
              local.get 4
              local.get 4
              i32.load
              local.get 5
              i32.add
              i32.store
              br 0 (;@5;)
            end
          end
          local.get 3
          i32.const 32
          i32.add
          global.set $__stack_pointer
          local.get 8
          local.get 7
          i64.or
          return
        end
        local.get 2
        local.get 6
        i32.const 1048912
        call $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E
        unreachable
      end
      local.get 3
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 1048684
      i32.store offset=24
      local.get 3
      i64.const 1
      i64.store offset=12 align=4
      local.get 3
      i32.const 1050120
      i32.store offset=8
      local.get 3
      i32.const 8
      i32.add
      i32.const 1050160
      call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
      unreachable
    end
    local.get 4
    local.get 2
    i32.const 1048912
    call $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E
    unreachable)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd82bd8ee7fc8fd71E (type 1) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN3std2io5Write18write_all_vectored17hc55e6cab93b38a81E (type 12) (param i32 i32 i32) (result i64)
    (local i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 1
          i32.const 4
          i32.add
          local.set 5
          local.get 2
          i32.const 3
          i32.shl
          i32.const -8
          i32.add
          i32.const 3
          i32.shr_u
          i32.const 1
          i32.add
          local.set 6
          i32.const 0
          local.set 4
          block  ;; label = @4
            loop  ;; label = @5
              local.get 5
              i32.load
              br_if 1 (;@4;)
              local.get 5
              i32.const 8
              i32.add
              local.set 5
              local.get 6
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 6
            local.set 4
          end
          local.get 4
          local.get 2
          i32.gt_u
          br_if 1 (;@2;)
        end
        i32.const 1048876
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.tee 7
        i64.const 5892
        i64.or
        local.set 8
        local.get 2
        local.get 4
        i32.sub
        local.tee 9
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        i32.const 3
        i32.shl
        i32.add
        local.set 10
        local.get 0
        i32.const 8
        i32.add
        local.set 11
        local.get 0
        i32.const 4
        i32.add
        local.set 12
        local.get 7
        i64.const 5890
        i64.or
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 9
            i32.const 3
            i32.shl
            local.tee 13
            i32.const -8
            i32.add
            local.tee 5
            i32.const 3
            i32.shr_u
            i32.const 1
            i32.add
            local.tee 14
            i32.const 7
            i32.and
            local.set 6
            i32.const 0
            local.set 2
            local.get 10
            local.set 4
            block  ;; label = @5
              local.get 5
              i32.const 56
              i32.lt_u
              br_if 0 (;@5;)
              local.get 10
              i32.const 60
              i32.add
              local.set 5
              i32.const 0
              local.set 2
              i32.const 0
              local.get 14
              i32.const 1073741816
              i32.and
              i32.sub
              local.set 4
              loop  ;; label = @6
                local.get 5
                i32.load
                local.get 5
                i32.const -8
                i32.add
                i32.load
                local.get 5
                i32.const -16
                i32.add
                i32.load
                local.get 5
                i32.const -24
                i32.add
                i32.load
                local.get 5
                i32.const -32
                i32.add
                i32.load
                local.get 5
                i32.const -40
                i32.add
                i32.load
                local.get 5
                i32.const -48
                i32.add
                i32.load
                local.get 5
                i32.const -56
                i32.add
                i32.load
                local.get 2
                i32.add
                i32.add
                i32.add
                i32.add
                i32.add
                i32.add
                i32.add
                i32.add
                local.set 2
                local.get 5
                i32.const 64
                i32.add
                local.set 5
                local.get 4
                i32.const 8
                i32.add
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const -60
              i32.add
              local.set 4
            end
            block  ;; label = @5
              local.get 6
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.get 6
              i32.sub
              local.set 5
              local.get 4
              i32.const 4
              i32.add
              local.set 4
              loop  ;; label = @6
                local.get 4
                i32.load
                local.get 2
                i32.add
                local.set 2
                local.get 5
                i32.const 1
                i32.add
                local.tee 6
                local.get 5
                i32.ge_u
                local.set 1
                local.get 6
                local.set 5
                local.get 4
                i32.const 8
                i32.add
                local.set 4
                local.get 1
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 12
              i32.load
              local.get 11
              i32.load
              local.tee 5
              i32.sub
              local.get 2
              i32.ge_u
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              local.get 2
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
              local.get 11
              i32.load
              local.set 5
            end
            local.get 10
            local.get 13
            i32.add
            local.set 13
            local.get 10
            local.set 4
            loop  ;; label = @5
              local.get 4
              i32.load
              local.set 1
              block  ;; label = @6
                local.get 12
                i32.load
                local.get 5
                i32.sub
                local.get 4
                i32.const 4
                i32.add
                i32.load
                local.tee 6
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                local.get 6
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
                local.get 11
                i32.load
                local.set 5
              end
              local.get 0
              i32.load
              local.get 5
              i32.add
              local.get 1
              local.get 6
              call $memcpy
              drop
              local.get 11
              local.get 5
              local.get 6
              i32.add
              local.tee 5
              i32.store
              local.get 13
              local.get 4
              i32.const 8
              i32.add
              local.tee 4
              i32.ne
              br_if 0 (;@5;)
            end
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              local.get 7
              local.set 8
              br 4 (;@1;)
            end
            local.get 10
            i32.const 4
            i32.add
            local.set 5
            i32.const 0
            local.set 4
            i32.const 0
            local.set 6
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                i32.load
                local.get 6
                i32.add
                local.tee 1
                local.get 2
                i32.gt_u
                br_if 1 (;@5;)
                local.get 5
                i32.const 8
                i32.add
                local.set 5
                local.get 1
                local.set 6
                local.get 14
                local.get 4
                i32.const 1
                i32.add
                local.tee 4
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 1
              local.set 6
              local.get 14
              local.set 4
            end
            block  ;; label = @5
              local.get 9
              local.get 4
              i32.lt_u
              br_if 0 (;@5;)
              local.get 9
              local.get 4
              i32.sub
              local.tee 9
              i32.eqz
              br_if 4 (;@1;)
              local.get 10
              local.get 4
              i32.const 3
              i32.shl
              local.tee 4
              i32.add
              local.tee 1
              i32.load offset=4
              local.tee 13
              local.get 2
              local.get 6
              i32.sub
              local.tee 5
              i32.lt_u
              br_if 2 (;@3;)
              local.get 1
              i32.const 4
              i32.add
              local.get 13
              local.get 5
              i32.sub
              i32.store
              local.get 10
              local.get 4
              i32.add
              local.tee 10
              local.get 10
              i32.load
              local.get 5
              i32.add
              i32.store
              br 1 (;@4;)
            end
          end
          local.get 4
          local.get 9
          i32.const 1048912
          call $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E
          unreachable
        end
        local.get 3
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 3
        i32.const 1048684
        i32.store offset=24
        local.get 3
        i64.const 1
        i64.store offset=12 align=4
        local.get 3
        i32.const 1050120
        i32.store offset=8
        local.get 3
        i32.const 8
        i32.add
        i32.const 1050160
        call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
        unreachable
      end
      local.get 4
      local.get 2
      i32.const 1048912
      call $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 8)
  (func $_ZN3std2io5Write9write_fmt17h255ca63f35a92f9aE (type 3) (param i32 i32) (result i64)
    (local i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=24
    local.get 2
    i32.const 8
    i32.add
    i32.const 1048944
    local.get 2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 0
    local.get 2
    i32.load8_u offset=12
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 255
          i32.and
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          i32.const 1048984
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 8
          i64.shr_u
          i64.const 40
          i64.or
          local.set 3
          i64.const 2
          local.set 4
          br 2 (;@1;)
        end
        local.get 1
        i64.extend_i32_u
        i64.const 255
        i64.and
        local.set 4
        local.get 2
        i64.load32_u offset=13 align=1
        local.get 2
        i32.const 17
        i32.add
        i64.load16_u align=1
        local.get 2
        i32.const 19
        i32.add
        i64.load8_u
        i64.const 16
        i64.shl
        i64.or
        i64.const 32
        i64.shl
        i64.or
        local.set 3
        br 1 (;@1;)
      end
      i64.const 4
      local.set 4
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.and
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        i32.const 1048984
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 8
        i64.shr_u
        i64.const 40
        i64.or
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 0
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 5
        local.get 0
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 2
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
      i32.const 1048984
      i64.extend_i32_u
      i64.const 32
      i64.shl
      i64.const 8
      i64.shr_u
      i64.const 40
      i64.or
      local.set 3
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 3
    i64.const 8
    i64.shl
    local.get 4
    i64.or)
  (func $_ZN3std2io5Write9write_fmt17h499981c239d54ae9E (type 3) (param i32 i32) (result i64)
    (local i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=24
    local.get 2
    i32.const 8
    i32.add
    i32.const 1048992
    local.get 2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 0
    local.get 2
    i32.load8_u offset=12
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 255
          i32.and
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          i32.const 1048984
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 8
          i64.shr_u
          i64.const 40
          i64.or
          local.set 3
          i64.const 2
          local.set 4
          br 2 (;@1;)
        end
        local.get 1
        i64.extend_i32_u
        i64.const 255
        i64.and
        local.set 4
        local.get 2
        i64.load32_u offset=13 align=1
        local.get 2
        i32.const 17
        i32.add
        i64.load16_u align=1
        local.get 2
        i32.const 19
        i32.add
        i64.load8_u
        i64.const 16
        i64.shl
        i64.or
        i64.const 32
        i64.shl
        i64.or
        local.set 3
        br 1 (;@1;)
      end
      i64.const 4
      local.set 4
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.and
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        i32.const 1048984
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 8
        i64.shr_u
        i64.const 40
        i64.or
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 0
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 5
        local.get 0
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 2
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
      i32.const 1048984
      i64.extend_i32_u
      i64.const 32
      i64.shl
      i64.const 8
      i64.shr_u
      i64.const 40
      i64.or
      local.set 3
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 3
    i64.const 8
    i64.shl
    local.get 4
    i64.or)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h4e86fb1d82386c43E (type 4) (param i32 i32 i32) (result i32)
    (local i64 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN3std2io5Write9write_all17h25c290ba11a9c807E
      local.tee 3
      i32.wrap_i64
      local.tee 2
      i32.const 255
      i32.and
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.const 8
      i64.shr_u
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 2
      i32.store8 offset=4
      local.get 0
      i32.const 11
      i32.add
      local.get 3
      i64.const 48
      i64.shr_u
      i64.store8
      local.get 0
      i32.const 9
      i32.add
      local.get 3
      i64.const 32
      i64.shr_u
      i64.store16 align=1
      local.get 0
      i32.const 5
      i32.add
      local.get 3
      i64.store32 align=1
    end
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hbca823674aa20c5bE (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN59_$LT$std..process..ChildStdin$u20$as$u20$std..io..Write$GT$5flush17hb51f2e4dd9b40a5dE (type 0) (param i32) (result i64)
    i64.const 4)
  (func $_ZN3std7process5abort17he9dca8e9e81ea201E (type 7)
    call $_ZN3std3sys4wasi14abort_internal17hb77c731f9c4d8fecE
    unreachable)
  (func $_ZN3std3sys4wasi14abort_internal17hb77c731f9c4d8fecE (type 7)
    call $abort
    unreachable)
  (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h585ca8dcd3f5855eE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN3std3env11current_dir17h1505700ef8b99c4dE
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        i32.load
        local.set 4
        local.get 2
        i32.load offset=12
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        i32.load
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    end
    local.get 2
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 1048684
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=12 align=4
    local.get 2
    i32.const 1049084
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.const 8
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17h6c8622e8563fd949E
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.and
            br_if 0 (;@4;)
            local.get 2
            i32.const 28
            i32.add
            i32.const 0
            i32.store
            local.get 2
            i32.const 1048684
            i32.store offset=24
            local.get 2
            i64.const 1
            i64.store offset=12 align=4
            local.get 2
            i32.const 1049180
            i32.store offset=8
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17h6c8622e8563fd949E
            br_if 1 (;@3;)
          end
          i32.const 0
          local.set 1
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 4
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 1
        local.set 1
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 4
      i32.const 1
      call $__rust_dealloc
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h983e4ee28fd52956E (type 1) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h4991ccaee0940e1dE
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h4991ccaee0940e1dE (type 9) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 4
          br_if 2 (;@1;)
          i32.const 1048684
          local.set 0
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        local.get 4
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.load offset=4
        local.set 4
        local.get 0
        i32.load
        local.set 0
      end
      local.get 3
      local.get 4
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 1049772
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo7message17hccba5610b5a2ff2bE
      local.get 2
      call $_ZN3std9panicking20rust_panic_with_hook17h03f0429c6d383fb4E
      unreachable
    end
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 1049752
    local.get 1
    call $_ZN4core5panic10panic_info9PanicInfo7message17hccba5610b5a2ff2bE
    local.get 2
    call $_ZN3std9panicking20rust_panic_with_hook17h03f0429c6d383fb4E
    unreachable)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h80ba71002d5fa20aE (type 8) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1049188
      i32.const 43
      i32.const 1049704
      call $_ZN4core9panicking5panic17he5870e8f24d6369dE
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hb2e81a776d69c9f9E (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1049188
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17he5870e8f24d6369dE
      unreachable
    end
    local.get 0)
  (func $_ZN3std5alloc24default_alloc_error_hook17h82a2ed74365a0027E (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 6
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store
    local.get 2
    i32.const 4
    i32.store8 offset=20
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=16
    local.get 2
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=36 align=4
    local.get 2
    i32.const 1049360
    i32.store offset=32
    local.get 2
    local.get 2
    i32.store offset=48
    local.get 2
    i32.const 16
    i32.add
    i32.const 1048944
    local.get 2
    i32.const 32
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 0
    local.get 2
    i32.load8_u offset=20
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 255
        i32.and
        local.tee 0
        i32.const 4
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i64.load32_u offset=21 align=1
        local.get 2
        i32.const 25
        i32.add
        i64.load16_u align=1
        local.get 2
        i32.const 27
        i32.add
        i64.load8_u
        i64.const 16
        i64.shl
        i64.or
        i64.const 32
        i64.shl
        i64.or
        i64.const 24
        i64.shr_u
        i32.wrap_i64
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.get 4
          local.get 3
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      local.get 3
      i32.const 255
      i32.and
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 24
      i32.add
      i32.load
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.load offset=4
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.get 4
        local.get 3
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 2
      i32.load offset=24
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $rust_oom (type 2) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1050988
    local.tee 2
    i32.const 7
    local.get 2
    select
    call_indirect (type 2)
    call $_ZN3std7process5abort17he9dca8e9e81ea201E
    unreachable)
  (func $__rdl_alloc (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.le_u
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 0
      call $aligned_alloc
      return
    end
    local.get 0
    call $malloc)
  (func $__rdl_dealloc (type 9) (param i32 i32 i32)
    local.get 0
    call $free)
  (func $__rdl_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        local.get 3
        call $aligned_alloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      local.get 3
      local.get 1
      local.get 1
      local.get 3
      i32.gt_u
      select
      call $memcpy
      local.set 3
      local.get 0
      call $free
      local.get 3
      return
    end
    local.get 0
    local.get 3
    call $realloc)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h488d8c34a7af59a9E (type 9) (param i32 i32 i32)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 32
    i32.add
    i32.const 20
    i32.add
    i32.const 8
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 9
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 3
    i64.const 4
    i64.store offset=12 align=4
    local.get 3
    i32.const 1049568
    i32.store offset=8
    local.get 3
    i32.const 9
    i32.store offset=36
    local.get 3
    local.get 0
    i32.load offset=8
    i32.store offset=48
    local.get 3
    local.get 0
    i32.load offset=4
    i32.store offset=40
    local.get 3
    local.get 0
    i32.load
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      i32.load offset=36
      local.tee 4
      call_indirect (type 3)
      local.tee 5
      i32.wrap_i64
      i32.const 255
      i32.and
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 6
        i32.load offset=4
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 7
        local.get 6
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 2
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=12
              i32.load8_u
              local.tee 2
              i32.const -3
              i32.add
              i32.const 255
              i32.and
              local.tee 0
              i32.const 1
              i32.add
              i32.const 0
              local.get 0
              i32.const 2
              i32.lt_u
              select
              br_table 0 (;@5;) 4 (;@1;) 1 (;@4;) 0 (;@5;)
            end
            i32.const 0
            i32.load8_u offset=1051034
            local.set 0
            i32.const 0
            i32.const 1
            i32.store8 offset=1051034
            local.get 3
            local.get 0
            i32.store8 offset=8
            local.get 0
            br_if 1 (;@3;)
            local.get 3
            i32.const 52
            i32.add
            i32.const 1
            i32.store
            local.get 3
            i64.const 1
            i64.store offset=36 align=4
            local.get 3
            i32.const 1048840
            i32.store offset=32
            local.get 3
            i32.const 10
            i32.store offset=12
            local.get 3
            local.get 2
            i32.store8 offset=63
            local.get 3
            local.get 3
            i32.const 8
            i32.add
            i32.store offset=48
            local.get 3
            local.get 3
            i32.const 63
            i32.add
            i32.store offset=8
            local.get 1
            local.get 3
            i32.const 32
            i32.add
            local.get 4
            call_indirect (type 3)
            local.set 5
            i32.const 0
            i32.const 0
            i32.store8 offset=1051034
            local.get 5
            i32.wrap_i64
            i32.const 255
            i32.and
            i32.const 3
            i32.ne
            br_if 3 (;@1;)
            local.get 5
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type 1)
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.load offset=4
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load
            local.get 2
            local.get 1
            i32.load offset=8
            call $__rust_dealloc
            br 2 (;@2;)
          end
          i32.const 0
          i32.load8_u offset=1050976
          local.set 0
          i32.const 0
          i32.const 0
          i32.store8 offset=1050976
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 52
          i32.add
          i32.const 0
          i32.store
          local.get 3
          i32.const 1048684
          i32.store offset=48
          local.get 3
          i64.const 1
          i64.store offset=36 align=4
          local.get 3
          i32.const 1049680
          i32.store offset=32
          local.get 1
          local.get 3
          i32.const 32
          i32.add
          local.get 4
          call_indirect (type 3)
          local.tee 5
          i32.wrap_i64
          i32.const 255
          i32.and
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load
          local.get 2
          local.get 1
          i32.load offset=8
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 3
        i32.const 52
        i32.add
        i32.const 0
        i32.store
        local.get 3
        i32.const 48
        i32.add
        i32.const 1048684
        i32.store
        local.get 3
        i64.const 1
        i64.store offset=36 align=4
        local.get 3
        i32.const 1050208
        i32.store offset=32
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.const 32
        i32.add
        call $_ZN4core9panicking13assert_failed17hcd8758e5d22e4120E
        unreachable
      end
      local.get 0
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd84c587d0483aeffE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h4152f979c6421ee3E)
  (func $rust_begin_unwind (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo8location17hf914df1247871dbaE
    i32.const 1049688
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hb2e81a776d69c9f9E
    local.set 2
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo7message17hccba5610b5a2ff2bE
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h80ba71002d5fa20aE
    local.set 3
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h983e4ee28fd52956E
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h50a414a3690003e2E (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1049016
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 5
      local.get 2
      i64.const 0
      i64.store offset=12 align=4
      local.get 2
      i32.const 0
      i32.load offset=1049016
      local.tee 4
      i32.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 5
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 5
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 5
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1050036
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    i32.const 12
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.load align=4
    local.set 6
    local.get 1
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i32.store offset=4
    local.get 2
    local.get 6
    i64.store offset=24
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
      unreachable
    end
    local.get 1
    local.get 2
    i64.load offset=24
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 5
    i32.load
    i32.store
    local.get 0
    i32.const 1049720
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h3f8603bdb7d18645E (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 1
      local.get 2
      i64.const 0
      i64.store offset=12 align=4
      local.get 2
      i32.const 0
      i32.load offset=1049016
      i32.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1050036
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 0
    i32.const 1049720
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hf3b8ed47dfcbb509E (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 8
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049736
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h4707d90ad6e74b96E (type 2) (param i32 i32)
    local.get 0
    i32.const 1049736
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN3std9panicking20rust_panic_with_hook17h03f0429c6d383fb4E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 1
    local.set 5
    i32.const 0
    i32.const 0
    i32.load offset=1051004
    local.tee 6
    i32.const 1
    i32.add
    i32.store offset=1051004
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1051024
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1051028
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store offset=1051024
    end
    i32.const 0
    local.get 5
    i32.store offset=1051028
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 5
            i32.const 2
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            i32.store offset=36
            local.get 4
            local.get 2
            i32.store offset=32
            local.get 4
            i32.const 1049232
            i32.store offset=28
            local.get 4
            i32.const 1048684
            i32.store offset=24
            i32.const 0
            i32.load offset=1050992
            local.tee 6
            i32.const -1
            i32.le_s
            br_if 2 (;@2;)
            i32.const 0
            local.get 6
            i32.const 1
            i32.add
            i32.store offset=1050992
            i32.const 0
            i32.load offset=1051000
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            i32.load offset=1050996
            local.set 2
            local.get 4
            i32.const 16
            i32.add
            local.get 0
            local.get 1
            i32.load offset=16
            call_indirect (type 2)
            local.get 4
            local.get 4
            i64.load offset=16
            i64.store offset=24
            local.get 2
            local.get 4
            i32.const 24
            i32.add
            local.get 6
            i32.load offset=20
            call_indirect (type 2)
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 2
              i32.gt_u
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              i32.store offset=60
              local.get 4
              local.get 2
              i32.store offset=56
              local.get 4
              i32.const 1049232
              i32.store offset=52
              local.get 4
              i32.const 1048684
              i32.store offset=48
              local.get 4
              i32.const 11
              i32.store offset=76
              local.get 4
              local.get 4
              i32.const 48
              i32.add
              i32.store offset=72
              local.get 4
              i32.const 4
              i32.store8 offset=28
              local.get 4
              local.get 4
              i32.const 104
              i32.add
              i32.store offset=24
              local.get 4
              i32.const 100
              i32.add
              i32.const 1
              i32.store
              local.get 4
              i64.const 2
              i64.store offset=84 align=4
              local.get 4
              i32.const 1049904
              i32.store offset=80
              local.get 4
              local.get 4
              i32.const 72
              i32.add
              i32.store offset=96
              local.get 4
              i32.const 24
              i32.add
              i32.const 1048944
              local.get 4
              i32.const 80
              i32.add
              call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
              local.set 5
              local.get 4
              i32.load8_u offset=28
              local.set 6
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 255
                i32.and
                local.tee 5
                i32.const 4
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                i32.const 3
                i32.ne
                br_if 2 (;@4;)
                local.get 4
                i64.load32_u offset=29 align=1
                local.get 4
                i32.const 33
                i32.add
                i64.load16_u align=1
                local.get 4
                i32.const 35
                i32.add
                i64.load8_u
                i64.const 16
                i64.shl
                i64.or
                i64.const 32
                i64.shl
                i64.or
                i64.const 24
                i64.shr_u
                i32.wrap_i64
                local.tee 4
                i32.load
                local.get 4
                i32.load offset=4
                i32.load
                call_indirect (type 1)
                block  ;; label = @7
                  local.get 4
                  i32.load offset=4
                  local.tee 5
                  i32.load offset=4
                  local.tee 6
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load
                  local.get 6
                  local.get 5
                  i32.load offset=8
                  call $__rust_dealloc
                end
                local.get 4
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                unreachable
                unreachable
              end
              local.get 6
              i32.const 255
              i32.and
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 4
              i32.const 32
              i32.add
              i32.load
              local.tee 5
              i32.load
              local.get 5
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 5
                i32.load offset=4
                local.tee 6
                i32.load offset=4
                local.tee 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load
                local.get 2
                local.get 6
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 4
              i32.load offset=32
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              unreachable
              unreachable
            end
            local.get 4
            i32.const 4
            i32.store8 offset=52
            local.get 4
            local.get 4
            i32.const 104
            i32.add
            i32.store offset=48
            local.get 4
            i32.const 100
            i32.add
            i32.const 0
            i32.store
            local.get 4
            i32.const 1048684
            i32.store offset=96
            local.get 4
            i64.const 1
            i64.store offset=84 align=4
            local.get 4
            i32.const 1049844
            i32.store offset=80
            local.get 4
            i32.const 48
            i32.add
            i32.const 1048944
            local.get 4
            i32.const 80
            i32.add
            call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
            local.set 5
            local.get 4
            i32.load8_u offset=52
            local.set 6
            block  ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.const 255
              i32.and
              local.tee 5
              i32.const 4
              i32.eq
              br_if 1 (;@4;)
              local.get 5
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 4
              i64.load32_u offset=53 align=1
              local.get 4
              i32.const 57
              i32.add
              i64.load16_u align=1
              local.get 4
              i32.const 59
              i32.add
              i64.load8_u
              i64.const 16
              i64.shl
              i64.or
              i64.const 32
              i64.shl
              i64.or
              i64.const 24
              i64.shr_u
              i32.wrap_i64
              local.tee 4
              i32.load
              local.get 4
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 4
                i32.load offset=4
                local.tee 5
                i32.load offset=4
                local.tee 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load
                local.get 6
                local.get 5
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 4
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              unreachable
              unreachable
            end
            local.get 6
            i32.const 255
            i32.and
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 56
            i32.add
            i32.load
            local.tee 5
            i32.load
            local.get 5
            i32.load offset=4
            i32.load
            call_indirect (type 1)
            block  ;; label = @5
              local.get 5
              i32.load offset=4
              local.tee 6
              i32.load offset=4
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load
              local.get 2
              local.get 6
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 4
            i32.load offset=56
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          unreachable
          unreachable
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        i32.load offset=16
        call_indirect (type 2)
        local.get 4
        local.get 4
        i64.load offset=8
        i64.store offset=24
        local.get 4
        i32.const 24
        i32.add
        call $_ZN3std9panicking12default_hook17h873b29f0e145cb1aE
        br 1 (;@1;)
      end
      local.get 4
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 4
      i32.const 80
      i32.add
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i64.const 2
      i64.store offset=52 align=4
      local.get 4
      i32.const 1049048
      i32.store offset=48
      local.get 4
      i32.const 12
      i32.store offset=76
      local.get 4
      i32.const 1048684
      i32.store offset=96
      local.get 4
      i64.const 1
      i64.store offset=84 align=4
      local.get 4
      i32.const 1050308
      i32.store offset=80
      local.get 4
      local.get 4
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 4
      local.get 4
      i32.const 80
      i32.add
      i32.store offset=72
      local.get 4
      local.get 4
      i32.const 104
      i32.add
      local.get 4
      i32.const 48
      i32.add
      call $_ZN3std2io5Write9write_fmt17h255ca63f35a92f9aE
      i64.store offset=40
      local.get 4
      i32.const 40
      i32.add
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8e978caf62299e0dE
      call $_ZN3std3sys4wasi14abort_internal17hb77c731f9c4d8fecE
      unreachable
    end
    i32.const 0
    i32.const 0
    i32.load offset=1050992
    i32.const -1
    i32.add
    i32.store offset=1050992
    block  ;; label = @1
      local.get 5
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $rust_panic
      unreachable
    end
    local.get 4
    i32.const 100
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 1048684
    i32.store offset=96
    local.get 4
    i64.const 1
    i64.store offset=84 align=4
    local.get 4
    i32.const 1049964
    i32.store offset=80
    local.get 4
    local.get 4
    i32.const 104
    i32.add
    local.get 4
    i32.const 80
    i32.add
    call $_ZN3std2io5Write9write_fmt17h255ca63f35a92f9aE
    i64.store offset=48
    local.get 4
    i32.const 48
    i32.add
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8e978caf62299e0dE
    unreachable
    unreachable)
  (func $rust_panic (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 2
    call $__rust_start_panic
    i32.store offset=12
    local.get 2
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 1049048
    i32.store offset=24
    local.get 2
    i32.const 12
    i32.store offset=52
    local.get 2
    i64.const 1
    i64.store offset=60 align=4
    local.get 2
    i32.const 1050004
    i32.store offset=56
    local.get 2
    i32.const 6
    i32.store offset=84
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 80
    i32.add
    i32.store offset=72
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store offset=80
    local.get 2
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 24
    i32.add
    call $_ZN3std2io5Write9write_fmt17h255ca63f35a92f9aE
    i64.store offset=16
    local.get 2
    i32.const 16
    i32.add
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8e978caf62299e0dE
    call $_ZN3std3sys4wasi14abort_internal17hb77c731f9c4d8fecE
    unreachable)
  (func $_ZN4core3fmt5Write10write_char17h95d63c59e02a9985E (type 5) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set 1
    end
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN3std2io5Write9write_all17h25c290ba11a9c807E
      local.tee 3
      i32.wrap_i64
      local.tee 4
      i32.const 255
      i32.and
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.const 8
      i64.shr_u
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 5
        i32.load
        local.get 5
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 5
          i32.load offset=4
          local.tee 6
          i32.load offset=4
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load
          local.get 7
          local.get 6
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 5
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i32.store8 offset=4
      local.get 0
      i32.const 11
      i32.add
      local.get 3
      i64.const 48
      i64.shr_u
      i64.store8
      local.get 0
      i32.const 9
      i32.add
      local.get 3
      i64.const 32
      i64.shr_u
      i64.store16 align=1
      local.get 0
      i32.const 5
      i32.add
      local.get 3
      i64.store32 align=1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN4core3fmt5Write10write_char17hf681e23aba91e62dE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set 1
    end
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 1
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN4core3fmt5Write9write_fmt17h3c2545d59f66358eE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1050012
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17hdd3d839fce7a1a26E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1050060
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2126233977580b20E (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h395aa64dfd69eb7fE (type 4) (param i32 i32 i32) (result i32)
    (local i64 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN3std2io5Write9write_all17h25c290ba11a9c807E
      local.tee 3
      i32.wrap_i64
      local.tee 2
      i32.const 255
      i32.and
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.const 8
      i64.shr_u
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 2
      i32.store8 offset=4
      local.get 0
      i32.const 11
      i32.add
      local.get 3
      i64.const 48
      i64.shr_u
      i64.store8
      local.get 0
      i32.const 9
      i32.add
      local.get 3
      i64.const 32
      i64.shr_u
      i64.store16 align=1
      local.get 0
      i32.const 5
      i32.add
      local.get 3
      i64.store32 align=1
    end
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7e3d431c752872e7E (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f35cd2a240390bbE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf53b6339646d9978E
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        i32.store offset=8
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.const 8
        i32.add
        local.tee 4
        i32.load
        local.tee 3
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ef3434662383b0dE
        local.get 4
        i32.load
        local.set 3
      end
      local.get 0
      i32.load
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 4
      local.get 3
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84ad32f0ee919fefE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h95d63c59e02a9985E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h9b46224e3541c61aE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17hf681e23aba91e62dE
    drop
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h2dbf7ebd9995c4e9E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1050012
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha504f5915fc610bfE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1050036
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha5c6af4ec5e0210bE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1050060
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h47e13853413426f8E (type 11) (param i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store
    i32.const 1
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        i32.const 2
        local.get 4
        i32.const 1
        call $_ZN4wasi13lib_generated8fd_write17h0ec012d1fa633378E
        local.tee 5
        i64.const 65535
        i64.and
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i64.const 32
        i64.shr_u
        i64.store32 offset=4
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      i64.const 16
      i64.shr_u
      i64.store16 offset=14
      local.get 0
      local.get 4
      i32.const 14
      i32.add
      call $_ZN4wasi5error5Error9raw_error17h26a67d0183ef908dE
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store offset=4 align=4
    end
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h5748baeb032c1aecE (type 11) (param i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 2
        local.get 2
        local.get 3
        call $_ZN4wasi13lib_generated8fd_write17h0ec012d1fa633378E
        local.tee 5
        i64.const 65535
        i64.and
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i64.const 32
        i64.shr_u
        i64.store32 offset=4
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      i64.const 16
      i64.shr_u
      i64.store16 offset=14
      local.get 0
      local.get 4
      i32.const 14
      i32.add
      call $_ZN4wasi5error5Error9raw_error17h26a67d0183ef908dE
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store offset=4 align=4
      i32.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hc68eb8ca448867e7E (type 8) (param i32) (result i32)
    i32.const 1)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2db4ea1bac5dc6a6E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h3aff92a45835617dE)
  (func $__rust_start_panic (type 8) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN4wasi5error5Error9raw_error17h26a67d0183ef908dE (type 8) (param i32) (result i32)
    local.get 0
    i32.load16_u)
  (func $_ZN4wasi13lib_generated8fd_write17h0ec012d1fa633378E (type 12) (param i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h3f3c7d60d98f8ca9E
    local.set 0
    local.get 3
    i64.load32_u offset=12
    local.set 4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i64.const 0
    local.get 4
    i64.const 32
    i64.shl
    local.get 0
    select
    local.get 0
    i64.extend_i32_u
    i64.const 16
    i64.shl
    i64.or
    local.get 0
    i32.const 0
    i32.ne
    i64.extend_i32_u
    i64.or)
  (func $malloc (type 8) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051060
      br_if 0 (;@1;)
      i32.const 0
      call $sbrk
      i32.const 1051552
      i32.sub
      local.tee 2
      i32.const 89
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      block  ;; label = @2
        i32.const 0
        i32.load offset=1051508
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        i64.const -1
        i64.store offset=1051520 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=1051512 align=4
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee 4
        i32.store offset=1051508
        i32.const 0
        i32.const 0
        i32.store offset=1051528
        i32.const 0
        i32.const 0
        i32.store offset=1051480
      end
      i32.const 0
      local.get 2
      i32.store offset=1051488
      i32.const 0
      i32.const 1051552
      i32.store offset=1051484
      i32.const 0
      i32.const 1051552
      i32.store offset=1051052
      i32.const 0
      local.get 4
      i32.store offset=1051072
      i32.const 0
      i32.const -1
      i32.store offset=1051068
      loop  ;; label = @2
        local.get 3
        i32.const 1051084
        i32.add
        local.get 3
        i32.const 1051076
        i32.add
        local.tee 4
        i32.store
        local.get 3
        i32.const 1051088
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        i32.const 256
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const 1051560
      i32.sub
      i32.const 15
      i32.and
      i32.const 0
      i32.const 1051560
      i32.const 15
      i32.and
      select
      local.tee 3
      i32.const 1051556
      i32.add
      local.get 2
      local.get 3
      i32.sub
      i32.const -56
      i32.add
      local.tee 4
      i32.const 1
      i32.or
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=1051524
      i32.store offset=1051064
      i32.const 0
      local.get 3
      i32.const 1051552
      i32.add
      i32.store offset=1051060
      i32.const 0
      local.get 4
      i32.store offset=1051048
      local.get 2
      i32.const 1051500
      i32.add
      i32.const 56
      i32.store
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1051036
                              local.tee 5
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 2
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee 2
                              i32.const 3
                              i32.shl
                              local.tee 6
                              i32.const 1051084
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 6
                                  i32.const 1051076
                                  i32.add
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 5
                                  i32.const -2
                                  local.get 2
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1051036
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1051052
                                local.get 0
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 0
                                i32.store offset=8
                                local.get 0
                                local.get 6
                                i32.store offset=12
                              end
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 0
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 2
                            i32.const 0
                            i32.load offset=1051044
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 3
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 0
                                  local.get 3
                                  i32.or
                                  local.get 4
                                  local.get 0
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 0
                                  i32.const 3
                                  i32.shl
                                  local.tee 6
                                  i32.const 1051084
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 3
                                  local.get 6
                                  i32.const 1051076
                                  i32.add
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 5
                                  i32.const -2
                                  local.get 0
                                  i32.rotl
                                  i32.and
                                  local.tee 5
                                  i32.store offset=1051036
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1051052
                                local.get 3
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 6
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 3
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 0
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.add
                              local.get 0
                              local.get 2
                              i32.sub
                              local.tee 0
                              i32.store
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 6
                              local.get 0
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 1051076
                                i32.add
                                local.set 2
                                i32.const 0
                                i32.load offset=1051056
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 5
                                    local.get 8
                                    i32.or
                                    i32.store offset=1051036
                                    local.get 2
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 2
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 2
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get 6
                              i32.store offset=1051056
                              i32.const 0
                              local.get 0
                              i32.store offset=1051044
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=1051040
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 3
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 0
                            local.get 3
                            i32.or
                            local.get 4
                            local.get 0
                            i32.shr_u
                            local.tee 3
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1051340
                            i32.add
                            i32.load
                            local.tee 6
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.sub
                            local.set 4
                            local.get 6
                            local.set 0
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load offset=16
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  local.get 0
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 3
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 2
                                i32.sub
                                local.tee 0
                                local.get 4
                                local.get 0
                                local.get 4
                                i32.lt_u
                                local.tee 0
                                select
                                local.set 4
                                local.get 3
                                local.get 6
                                local.get 0
                                select
                                local.set 6
                                local.get 3
                                local.set 0
                                br 0 (;@14;)
                              end
                            end
                            local.get 6
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 8
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1051052
                                local.get 6
                                i32.load offset=8
                                local.tee 3
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 3
                                i32.load offset=12
                                local.get 6
                                i32.ne
                                drop
                              end
                              local.get 8
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.set 0
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 11
                              local.get 3
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 8
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 2
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 3
                          i32.const -16
                          i32.and
                          local.set 2
                          i32.const 0
                          i32.load offset=1051040
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 3
                            i32.const 8
                            i32.shr_u
                            local.tee 3
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 2
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.get 3
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 3
                            local.get 3
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 3
                            i32.shl
                            local.tee 0
                            local.get 0
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 0
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 3
                            local.get 4
                            i32.or
                            local.get 0
                            i32.or
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.shl
                            local.get 2
                            local.get 3
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          local.set 0
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 1051340
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 3
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 2
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 6
                                i32.const 0
                                local.set 3
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 2
                                    i32.sub
                                    local.tee 5
                                    local.get 0
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 5
                                    local.set 0
                                    local.get 4
                                    local.set 8
                                    local.get 5
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 0
                                    local.get 4
                                    local.set 8
                                    local.get 4
                                    local.set 3
                                    br 3 (;@13;)
                                  end
                                  local.get 3
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  local.get 5
                                  local.get 4
                                  local.get 6
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.eq
                                  select
                                  local.get 3
                                  local.get 5
                                  select
                                  local.set 3
                                  local.get 6
                                  local.get 4
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  local.set 6
                                  local.get 4
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 3
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 3
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 3
                                i32.shr_u
                                local.tee 4
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 6
                                local.get 3
                                i32.or
                                local.get 4
                                local.get 6
                                i32.shr_u
                                local.tee 3
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 3
                                local.get 4
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 3
                                local.get 4
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 3
                                local.get 4
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 1051340
                                i32.add
                                i32.load
                                local.set 3
                              end
                              local.get 3
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.sub
                              local.tee 5
                              local.get 0
                              i32.lt_u
                              local.set 6
                              block  ;; label = @14
                                local.get 3
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 4
                              end
                              local.get 5
                              local.get 0
                              local.get 6
                              select
                              local.set 0
                              local.get 3
                              local.get 8
                              local.get 6
                              select
                              local.set 8
                              local.get 4
                              local.set 3
                              local.get 4
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 0
                          i32.load offset=1051044
                          local.get 2
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 6
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1051052
                              local.get 8
                              i32.load offset=8
                              local.tee 3
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 3
                              i32.load offset=12
                              local.get 8
                              i32.ne
                              drop
                            end
                            local.get 6
                            local.get 3
                            i32.store offset=8
                            local.get 3
                            local.get 6
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 4
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.set 5
                            local.get 3
                            local.tee 6
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 16
                            i32.add
                            local.set 4
                            local.get 6
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051044
                          local.tee 3
                          local.get 2
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1051056
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              local.get 2
                              i32.sub
                              local.tee 0
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 6
                              local.get 0
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 0
                              i32.store offset=1051044
                              i32.const 0
                              local.get 6
                              i32.store offset=1051056
                              local.get 4
                              local.get 3
                              i32.add
                              local.get 0
                              i32.store
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 3
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=1051056
                            i32.const 0
                            i32.const 0
                            i32.store offset=1051044
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051048
                          local.tee 6
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1051060
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 4
                          local.get 6
                          local.get 2
                          i32.sub
                          local.tee 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 0
                          i32.store offset=1051048
                          i32.const 0
                          local.get 4
                          i32.store offset=1051060
                          local.get 3
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1051508
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1051516
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=1051520 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=1051512 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=1051508
                          i32.const 0
                          i32.const 0
                          i32.store offset=1051528
                          i32.const 0
                          i32.const 0
                          i32.store offset=1051480
                          i32.const 65536
                          local.set 4
                        end
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          local.get 4
                          local.get 2
                          i32.const 71
                          i32.add
                          local.tee 7
                          i32.add
                          local.tee 5
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.tee 11
                          i32.and
                          local.tee 8
                          local.get 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=1051532
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051476
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1051468
                            local.tee 4
                            local.get 8
                            i32.add
                            local.tee 0
                            local.get 4
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          i32.const 0
                          i32.const 48
                          i32.store offset=1051532
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=1051480
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1051060
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1051484
                              local.set 3
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.load
                                  local.tee 0
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 3
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 3
                                i32.load offset=8
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 6
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 5
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1051512
                              local.tee 3
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 6
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 6
                              i32.sub
                              local.get 4
                              local.get 6
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 5
                            end
                            local.get 5
                            local.get 2
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 5
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1051476
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1051468
                              local.tee 4
                              local.get 5
                              i32.add
                              local.tee 0
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 0
                              local.get 3
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 5
                            call $sbrk
                            local.tee 3
                            local.get 6
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 5
                          local.get 6
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 5
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 5
                          call $sbrk
                          local.tee 6
                          local.get 3
                          i32.load
                          local.get 3
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 6
                          local.set 3
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.const 72
                          i32.add
                          local.get 5
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 7
                            local.get 5
                            i32.sub
                            i32.const 0
                            i32.load offset=1051516
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.set 6
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 4
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 5
                            i32.add
                            local.set 5
                            local.get 3
                            local.set 6
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 5
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 3
                        local.set 6
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 6
                    br 5 (;@3;)
                  end
                  local.get 6
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1051480
                i32.const 4
                i32.or
                i32.store offset=1051480
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call $sbrk
              local.tee 6
              i32.const 0
              call $sbrk
              local.tee 3
              i32.ge_u
              br_if 1 (;@4;)
              local.get 6
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              local.get 6
              i32.sub
              local.tee 5
              local.get 2
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1051468
            local.get 5
            i32.add
            local.tee 3
            i32.store offset=1051468
            block  ;; label = @5
              local.get 3
              i32.const 0
              i32.load offset=1051472
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              i32.store offset=1051472
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1051060
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1051484
                    local.set 3
                    loop  ;; label = @9
                      local.get 6
                      local.get 3
                      i32.load
                      local.tee 0
                      local.get 3
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1051052
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 3
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 6
                    i32.store offset=1051052
                  end
                  i32.const 0
                  local.set 3
                  i32.const 0
                  local.get 5
                  i32.store offset=1051488
                  i32.const 0
                  local.get 6
                  i32.store offset=1051484
                  i32.const 0
                  i32.const -1
                  i32.store offset=1051068
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051508
                  i32.store offset=1051072
                  i32.const 0
                  i32.const 0
                  i32.store offset=1051496
                  loop  ;; label = @8
                    local.get 3
                    i32.const 1051084
                    i32.add
                    local.get 3
                    i32.const 1051076
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 3
                    i32.const 1051088
                    i32.add
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 8
                    i32.add
                    local.tee 3
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.const -8
                  local.get 6
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 3
                  i32.add
                  local.tee 4
                  local.get 5
                  i32.const -56
                  i32.add
                  local.tee 0
                  local.get 3
                  i32.sub
                  local.tee 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051524
                  i32.store offset=1051064
                  i32.const 0
                  local.get 3
                  i32.store offset=1051048
                  i32.const 0
                  local.get 4
                  i32.store offset=1051060
                  local.get 6
                  local.get 0
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 3
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 6
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 6
                i32.const 0
                i32.load offset=1051048
                local.get 5
                i32.add
                local.tee 11
                local.get 0
                i32.sub
                local.tee 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 8
                local.get 5
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1051524
                i32.store offset=1051064
                i32.const 0
                local.get 0
                i32.store offset=1051048
                i32.const 0
                local.get 6
                i32.store offset=1051060
                local.get 4
                local.get 11
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 6
                i32.const 0
                i32.load offset=1051052
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=1051052
                local.get 6
                local.set 8
              end
              local.get 6
              local.get 5
              i32.add
              local.set 0
              i32.const 1051484
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              i32.load
                              local.get 0
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 3
                              i32.load offset=8
                              local.tee 3
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 3
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1051484
                        local.set 3
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 0
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 3
                            i32.load offset=4
                            i32.add
                            local.tee 0
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 3
                          br 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 6
                      i32.store
                      local.get 3
                      local.get 3
                      i32.load offset=4
                      local.get 5
                      i32.add
                      i32.store offset=4
                      local.get 6
                      i32.const -8
                      local.get 6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 6
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 11
                      i32.sub
                      local.get 2
                      i32.sub
                      local.set 3
                      local.get 11
                      local.get 2
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        local.get 4
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        i32.store offset=1051060
                        i32.const 0
                        i32.const 0
                        i32.load offset=1051048
                        local.get 3
                        i32.add
                        local.tee 3
                        i32.store offset=1051048
                        local.get 0
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1051056
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        i32.store offset=1051056
                        i32.const 0
                        i32.const 0
                        i32.load offset=1051044
                        local.get 3
                        i32.add
                        local.tee 3
                        i32.store offset=1051044
                        local.get 0
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 3
                        i32.add
                        local.get 3
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load offset=12
                            local.set 2
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=8
                              local.tee 5
                              local.get 4
                              i32.const 3
                              i32.shr_u
                              local.tee 9
                              i32.const 3
                              i32.shl
                              i32.const 1051076
                              i32.add
                              local.tee 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 5
                              i32.gt_u
                              drop
                            end
                            block  ;; label = @13
                              local.get 2
                              local.get 5
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1051036
                              i32.const -2
                              local.get 9
                              i32.rotl
                              i32.and
                              i32.store offset=1051036
                              br 2 (;@11;)
                            end
                            block  ;; label = @13
                              local.get 2
                              local.get 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 2
                              i32.gt_u
                              drop
                            end
                            local.get 2
                            local.get 5
                            i32.store offset=8
                            local.get 5
                            local.get 2
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 5
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 8
                                local.get 6
                                i32.load offset=8
                                local.tee 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=12
                                local.get 6
                                i32.ne
                                drop
                              end
                              local.get 5
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 5
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 5
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 8
                              local.get 2
                              local.tee 5
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 5
                              i32.load offset=16
                              local.tee 2
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=28
                              local.tee 2
                              i32.const 2
                              i32.shl
                              i32.const 1051340
                              i32.add
                              local.tee 4
                              i32.load
                              local.get 6
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 5
                              i32.store
                              local.get 5
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1051040
                              i32.const -2
                              local.get 2
                              i32.rotl
                              i32.and
                              i32.store offset=1051040
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 5
                            i32.store
                            local.get 5
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 5
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=16
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 4
                            i32.store offset=16
                            local.get 4
                            local.get 5
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 20
                          i32.add
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 5
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 3
                        i32.add
                        local.set 3
                        local.get 6
                        local.get 7
                        i32.add
                        local.set 6
                      end
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 0
                      local.get 3
                      i32.add
                      local.get 3
                      i32.store
                      local.get 0
                      local.get 3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        local.get 3
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 1051076
                        i32.add
                        local.set 3
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1051036
                            local.tee 2
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 2
                            local.get 4
                            i32.or
                            i32.store offset=1051036
                            local.get 3
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 4
                        local.get 0
                        i32.store offset=12
                        local.get 3
                        local.get 0
                        i32.store offset=8
                        local.get 0
                        local.get 3
                        i32.store offset=12
                        local.get 0
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 4
                      block  ;; label = @10
                        local.get 3
                        i32.const 8
                        i32.shr_u
                        local.tee 2
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 4
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 2
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 2
                        local.get 2
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 2
                        i32.shl
                        local.tee 6
                        local.get 6
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 6
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 2
                        local.get 4
                        i32.or
                        local.get 6
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 3
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=28
                      local.get 0
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 1051340
                      i32.add
                      local.set 2
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1051040
                        local.tee 6
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 0
                        i32.store
                        i32.const 0
                        local.get 6
                        local.get 8
                        i32.or
                        i32.store offset=1051040
                        local.get 0
                        local.get 2
                        i32.store offset=24
                        local.get 0
                        local.get 0
                        i32.store offset=8
                        local.get 0
                        local.get 0
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 3
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 2
                      i32.load
                      local.set 6
                      loop  ;; label = @10
                        local.get 6
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 6
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 2
                        local.get 6
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 6
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 0
                      i32.store
                      local.get 0
                      local.get 2
                      i32.store offset=24
                      local.get 0
                      local.get 0
                      i32.store offset=12
                      local.get 0
                      local.get 0
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 6
                    i32.const -8
                    local.get 6
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 3
                    i32.add
                    local.tee 11
                    local.get 5
                    i32.const -56
                    i32.add
                    local.tee 8
                    local.get 3
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 6
                    local.get 8
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get 4
                    local.get 0
                    i32.const 55
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 8
                    local.get 8
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051524
                    i32.store offset=1051064
                    i32.const 0
                    local.get 3
                    i32.store offset=1051048
                    i32.const 0
                    local.get 11
                    i32.store offset=1051060
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1051492 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=1051484 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=1051492
                    i32.const 0
                    local.get 5
                    i32.store offset=1051488
                    i32.const 0
                    local.get 6
                    i32.store offset=1051484
                    i32.const 0
                    i32.const 0
                    i32.store offset=1051496
                    local.get 8
                    i32.const 36
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 3
                      i32.const 7
                      i32.store
                      local.get 0
                      local.get 3
                      i32.const 4
                      i32.add
                      local.tee 3
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 8
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 5
                    i32.store
                    local.get 4
                    local.get 5
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 5
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 3
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.shl
                      i32.const 1051076
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051036
                          local.tee 6
                          i32.const 1
                          local.get 0
                          i32.shl
                          local.tee 0
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 6
                          local.get 0
                          i32.or
                          i32.store offset=1051036
                          local.get 3
                          local.set 0
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.load offset=8
                        local.set 0
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 3
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 0
                    local.set 3
                    block  ;; label = @9
                      local.get 5
                      i32.const 8
                      i32.shr_u
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      local.set 3
                      local.get 5
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 3
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 0
                      i32.shl
                      local.tee 6
                      local.get 6
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 6
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 0
                      local.get 3
                      i32.or
                      local.get 6
                      i32.or
                      i32.sub
                      local.tee 3
                      i32.const 1
                      i32.shl
                      local.get 5
                      local.get 3
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 3
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 28
                    i32.add
                    local.get 3
                    i32.store
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.const 1051340
                    i32.add
                    local.set 0
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1051040
                      local.tee 6
                      i32.const 1
                      local.get 3
                      i32.shl
                      local.tee 8
                      i32.and
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 4
                      i32.store
                      i32.const 0
                      local.get 6
                      local.get 8
                      i32.or
                      i32.store offset=1051040
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 0
                      i32.store
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 5
                    i32.const 0
                    i32.const 25
                    local.get 3
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 3
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 3
                    local.get 0
                    i32.load
                    local.set 6
                    loop  ;; label = @9
                      local.get 6
                      local.tee 0
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 5
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const 29
                      i32.shr_u
                      local.set 6
                      local.get 3
                      i32.const 1
                      i32.shl
                      local.set 3
                      local.get 0
                      local.get 6
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 8
                      i32.load
                      local.tee 6
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.store
                    local.get 4
                    i32.const 24
                    i32.add
                    local.get 0
                    i32.store
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.set 3
                  local.get 2
                  local.get 0
                  i32.store offset=8
                  local.get 3
                  local.get 0
                  i32.store offset=12
                  local.get 0
                  i32.const 0
                  i32.store offset=24
                  local.get 0
                  local.get 3
                  i32.store offset=8
                  local.get 0
                  local.get 2
                  i32.store offset=12
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 3
                br 5 (;@1;)
              end
              local.get 0
              i32.load offset=8
              local.set 3
              local.get 0
              local.get 4
              i32.store offset=8
              local.get 3
              local.get 4
              i32.store offset=12
              local.get 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 4
              local.get 3
              i32.store offset=8
              local.get 4
              local.get 0
              i32.store offset=12
            end
            i32.const 0
            i32.load offset=1051048
            local.tee 3
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1051060
            local.tee 4
            local.get 2
            i32.add
            local.tee 0
            local.get 3
            local.get 2
            i32.sub
            local.tee 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 3
            i32.store offset=1051048
            i32.const 0
            local.get 0
            i32.store offset=1051060
            local.get 4
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            i32.const 8
            i32.add
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          i32.const 0
          i32.const 48
          i32.store offset=1051532
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1051340
              i32.add
              local.tee 3
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=1051040
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 0
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 3
            i32.add
            local.tee 3
            local.get 3
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 2
          i32.add
          local.tee 6
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 0
          i32.add
          local.get 0
          i32.store
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 1051076
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1051036
                local.tee 0
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                local.get 4
                i32.or
                i32.store offset=1051036
                local.get 3
                local.set 4
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 6
            i32.store offset=12
            local.get 3
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 3
            i32.store offset=12
            local.get 6
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            i32.const 31
            local.set 3
            local.get 0
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 4
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 3
            i32.shl
            local.tee 4
            local.get 4
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 4
            i32.shl
            local.tee 2
            local.get 2
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 2
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 4
            local.get 3
            i32.or
            local.get 2
            i32.or
            i32.sub
            local.tee 3
            i32.const 1
            i32.shl
            local.get 0
            local.get 3
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 3
          end
          local.get 6
          local.get 3
          i32.store offset=28
          local.get 6
          i64.const 0
          i64.store offset=16 align=4
          local.get 3
          i32.const 2
          i32.shl
          i32.const 1051340
          i32.add
          local.set 4
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 3
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 6
            i32.store
            i32.const 0
            local.get 7
            local.get 2
            i32.or
            i32.store offset=1051040
            local.get 6
            local.get 4
            i32.store offset=24
            local.get 6
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 6
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 4
          i32.load
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 2
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 4
              local.get 2
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 5
              i32.load
              local.tee 2
              br_if 0 (;@5;)
            end
            local.get 5
            local.get 6
            i32.store
            local.get 6
            local.get 4
            i32.store offset=24
            local.get 6
            local.get 6
            i32.store offset=12
            local.get 6
            local.get 6
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=8
          local.set 3
          local.get 4
          local.get 6
          i32.store offset=8
          local.get 3
          local.get 6
          i32.store offset=12
          local.get 6
          i32.const 0
          i32.store offset=24
          local.get 6
          local.get 3
          i32.store offset=8
          local.get 6
          local.get 4
          i32.store offset=12
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 6
            i32.load offset=28
            local.tee 0
            i32.const 2
            i32.shl
            i32.const 1051340
            i32.add
            local.tee 3
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 0
            i32.rotl
            i32.and
            i32.store offset=1051040
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 6
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 6
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 8
          i32.store offset=24
        end
        local.get 6
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          local.get 4
          local.get 2
          i32.add
          local.tee 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 6
        local.get 2
        i32.add
        local.tee 0
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 6
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 1051076
          i32.add
          local.set 2
          i32.const 0
          i32.load offset=1051056
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 5
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 5
              i32.or
              i32.store offset=1051036
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 0
        i32.store offset=1051056
        i32.const 0
        local.get 4
        i32.store offset=1051044
      end
      local.get 6
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $free (type 1) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1051052
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051056
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 6
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 1051076
              i32.add
              local.tee 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1051036
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1051036
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 5
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 5
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 1
                i32.load offset=8
                local.tee 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=12
                local.get 1
                i32.ne
                drop
              end
              local.get 5
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 5
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 6
              local.get 4
              local.tee 5
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.add
              local.set 2
              local.get 5
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1051340
              i32.add
              local.tee 2
              i32.load
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 5
              i32.store
              local.get 5
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1051040
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1051040
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 5
            i32.store
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 5
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 5
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 0
        i32.store offset=1051044
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 3
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051060
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1051060
            i32.const 0
            i32.const 0
            i32.load offset=1051048
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1051048
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1051056
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1051044
            i32.const 0
            i32.const 0
            i32.store offset=1051056
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051056
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1051056
            i32.const 0
            i32.const 0
            i32.load offset=1051044
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1051044
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=12
              local.set 4
              block  ;; label = @6
                local.get 3
                i32.load offset=8
                local.tee 5
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 3
                i32.const 3
                i32.shl
                i32.const 1051076
                i32.add
                local.tee 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1051052
                local.get 5
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 4
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1051036
                i32.const -2
                local.get 3
                i32.rotl
                i32.and
                i32.store offset=1051036
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 4
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1051052
                local.get 4
                i32.gt_u
                drop
              end
              local.get 4
              local.get 5
              i32.store offset=8
              local.get 5
              local.get 4
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1051052
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=12
                  local.get 3
                  i32.ne
                  drop
                end
                local.get 5
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 5
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 6
                local.get 4
                local.tee 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1051340
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 5
                i32.store
                local.get 5
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1051040
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1051040
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 5
              i32.store
              local.get 5
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 5
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 5
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=1051056
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1051044
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 1051076
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051036
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 2
            i32.or
            i32.store offset=1051036
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 5
        local.get 5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 5
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 4
        local.get 2
        i32.or
        local.get 5
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 28
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1051340
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051040
          local.tee 5
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 5
          local.get 3
          i32.or
          i32.store offset=1051040
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 5
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 5
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.set 0
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 1
        local.get 4
        i32.store offset=12
      end
      i32.const 0
      i32.const 0
      i32.load offset=1051068
      i32.const -1
      i32.add
      local.tee 1
      i32.store offset=1051068
      local.get 1
      br_if 0 (;@1;)
      i32.const 1051492
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 0
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const -1
      i32.store offset=1051068
    end)
  (func $calloc (type 5) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $realloc (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1051532
      i32.const 0
      return
    end
    local.get 1
    i32.const 11
    i32.lt_u
    local.set 2
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.set 3
    local.get 0
    i32.const -8
    i32.add
    local.set 4
    local.get 0
    i32.const -4
    i32.add
    local.tee 5
    i32.load
    local.tee 6
    i32.const 3
    i32.and
    local.set 7
    i32.const 0
    i32.load offset=1051052
    local.set 8
    block  ;; label = @1
      local.get 6
      i32.const -8
      i32.and
      local.tee 9
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 8
      local.get 4
      i32.gt_u
      br_if 0 (;@1;)
      local.get 7
      i32.const 1
      i32.eq
      drop
    end
    i32.const 16
    local.get 3
    local.get 2
    select
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1051516
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 4
        local.get 9
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 9
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 9
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 5
          local.get 2
          local.get 6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051060
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1051048
          local.get 9
          i32.add
          local.tee 9
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          local.get 6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 4
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1051060
          i32.const 0
          local.get 9
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1051048
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051056
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1051044
          local.get 9
          i32.add
          local.tee 9
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 4
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 4
              local.get 9
              i32.add
              local.tee 9
              local.get 1
              i32.store
              local.get 9
              local.get 9
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 5
            local.get 6
            i32.const 1
            i32.and
            local.get 9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 4
            local.get 9
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1051056
          i32.const 0
          local.get 1
          i32.store offset=1051044
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 3
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const -8
        i32.and
        local.get 9
        i32.add
        local.tee 10
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 10
        local.get 2
        i32.sub
        local.set 11
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=12
            local.set 1
            block  ;; label = @5
              local.get 7
              i32.load offset=8
              local.tee 9
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 3
              i32.const 3
              i32.shl
              i32.const 1051076
              i32.add
              local.tee 7
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 1
              local.get 9
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1051036
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              i32.store offset=1051036
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.gt_u
              drop
            end
            local.get 1
            local.get 9
            i32.store offset=8
            local.get 9
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 3
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 8
                local.get 7
                i32.load offset=8
                local.tee 1
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.get 7
                i32.ne
                drop
              end
              local.get 3
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 3
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 7
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              local.get 7
              i32.const 16
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 1
              local.set 8
              local.get 9
              local.tee 3
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.load offset=16
              local.tee 9
              br_if 0 (;@5;)
            end
            local.get 8
            i32.const 0
            i32.store
          end
          local.get 12
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=28
              local.tee 9
              i32.const 2
              i32.shl
              i32.const 1051340
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1051040
              i32.const -2
              local.get 9
              i32.rotl
              i32.and
              i32.store offset=1051040
              br 2 (;@3;)
            end
            local.get 12
            i32.const 16
            i32.const 20
            local.get 12
            i32.load offset=16
            local.get 7
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 12
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 3
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 3
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 11
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 6
          i32.const 1
          i32.and
          local.get 10
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 10
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 5
        local.get 2
        local.get 6
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 4
        local.get 2
        i32.add
        local.tee 1
        local.get 11
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 4
        local.get 10
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 11
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      i32.const -4
      i32.const -8
      local.get 5
      i32.load
      local.tee 9
      i32.const 3
      i32.and
      select
      local.get 9
      i32.const -8
      i32.and
      i32.add
      local.tee 9
      local.get 1
      local.get 9
      local.get 1
      i32.lt_u
      select
      call $memcpy
      local.set 1
      local.get 0
      call $dlfree
      local.get 1
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051056
          local.get 0
          local.get 3
          i32.sub
          local.tee 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1051052
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 6
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 1051076
              i32.add
              local.tee 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1051036
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1051036
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 5
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 5
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=12
              local.tee 6
              local.get 0
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=12
                local.get 0
                i32.ne
                drop
              end
              local.get 6
              local.get 3
              i32.store offset=8
              local.get 3
              local.get 6
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 3
              local.set 4
              local.get 5
              local.tee 6
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 3
              local.get 6
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 4
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1051340
              i32.add
              local.tee 3
              i32.load
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1051040
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1051040
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          i32.load offset=20
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 1
        i32.store offset=1051044
        local.get 2
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051060
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1051060
            i32.const 0
            i32.const 0
            i32.load offset=1051048
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1051048
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1051056
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1051044
            i32.const 0
            i32.const 0
            i32.store offset=1051056
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051056
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1051056
            i32.const 0
            i32.const 0
            i32.load offset=1051044
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1051044
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          i32.const 0
          i32.load offset=1051052
          local.set 4
          local.get 3
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.set 5
              block  ;; label = @6
                local.get 2
                i32.load offset=8
                local.tee 6
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 2
                i32.const 3
                i32.shl
                i32.const 1051076
                i32.add
                local.tee 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 6
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 5
                local.get 6
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1051036
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store offset=1051036
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.gt_u
                drop
              end
              local.get 5
              local.get 6
              i32.store offset=8
              local.get 6
              local.get 5
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 6
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 4
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  local.get 2
                  i32.ne
                  drop
                end
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 4
                local.get 5
                local.tee 6
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 3
                local.get 6
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 4
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1051340
                i32.add
                local.tee 3
                i32.load
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1051040
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1051040
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1051056
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1051044
          return
        end
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 3
        i32.const 3
        i32.shl
        i32.const 1051076
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051036
            local.tee 5
            i32.const 1
            local.get 3
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 5
            local.get 3
            i32.or
            i32.store offset=1051036
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.set 3
        end
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 3
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 3
        i32.shl
        local.tee 5
        local.get 5
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 5
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 5
        local.get 3
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 3
        i32.const 1
        i32.shl
        local.get 1
        local.get 3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 3
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 28
      i32.add
      local.get 3
      i32.store
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1051340
      i32.add
      local.set 5
      block  ;; label = @2
        i32.const 0
        i32.load offset=1051040
        local.tee 6
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 5
        local.get 0
        i32.store
        i32.const 0
        local.get 6
        local.get 2
        i32.or
        i32.store offset=1051040
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 5
      i32.load
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.tee 5
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 6
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 5
          local.get 6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 2
          i32.load
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        i32.store
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 5
      i32.load offset=8
      local.set 1
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=12
    end)
  (func $internal_memalign (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 2
        i32.const 1
        i32.shl
        local.set 3
        local.get 2
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -64
      local.get 2
      i32.sub
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1051532
      i32.const 0
      return
    end
    block  ;; label = @1
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.const 12
      i32.or
      local.get 2
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 2
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 2
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.add
      local.get 3
      local.get 0
      i32.sub
      i32.const 15
      i32.gt_u
      select
      local.tee 2
      local.get 0
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.get 6
        i32.store offset=4
        local.get 2
        local.get 0
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      local.get 6
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 2
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 3
      call $dispose_chunk
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 0
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 2
      local.get 1
      i32.add
      local.tee 3
      local.get 0
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 2
      local.get 0
      i32.add
      local.tee 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 2
    i32.const 8
    i32.add)
  (func $aligned_alloc (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    local.get 0
    local.get 1
    call $internal_memalign)
  (func $abort (type 7)
    unreachable
    unreachable)
  (func $_Exit (type 1) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__wasilibc_ensure_environ (type 7)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051540
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end)
  (func $__wasilibc_initialize_environ (type 7)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $__wasi_environ_sizes_get
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 1
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1051536
            i32.store offset=1051540
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.tee 2
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              call $malloc
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 4
              call $calloc
              local.tee 1
              br_if 1 (;@4;)
              local.get 3
              call $free
            end
            i32.const 70
            call $_Exit
            unreachable
          end
          local.get 1
          local.get 3
          call $__wasi_environ_get
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          call $free
          local.get 1
          call $free
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      i32.const 0
      local.get 1
      i32.store offset=1051540
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__wasilibc_initialize_environ_eagerly (type 7)
    call $__wasilibc_initialize_environ)
  (func $sbrk (type 8) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1051532
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $__wasi_environ_get (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and)
  (func $__wasi_environ_sizes_get (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 1) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $getcwd (type 5) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1050980
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call $strdup
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1051532
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 2
        call $strlen
        i32.const 1
        i32.add
        local.get 1
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=1051532
        i32.const 0
        return
      end
      local.get 0
      local.get 2
      call $strcpy
      local.set 0
    end
    local.get 0)
  (func $dummy (type 7))
  (func $__wasm_call_dtors (type 7)
    call $dummy
    call $dummy)
  (func $getenv (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.tee 2
      local.get 0
      i32.sub
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1051540
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 4
      i32.add
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 2
            local.get 3
            call $strncmp
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.add
            local.tee 2
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.load
          local.set 2
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      i32.const 1
      i32.add
      local.set 1
    end
    local.get 1)
  (func $strdup (type 8) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $strlen (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.sub
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            local.set 1
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.sub
          return
        end
        loop  ;; label = @3
          local.get 1
          i32.load8_u offset=1
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 3
          local.set 1
          local.get 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const -1
      i32.add
      local.set 3
    end
    local.get 3
    local.get 0
    i32.sub)
  (func $__stpcpy (type 5) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.xor
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 1
          i32.load offset=4
          local.set 2
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 1
      i32.load8_u
      local.tee 2
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        local.tee 2
        i32.store8 offset=1
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strcpy (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $memcpy (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 4
          local.set 2
          local.get 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      local.set 4
      local.get 0
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 3
        i32.and
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.set 3
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const 8
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 3
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 3
            local.get 1
            i32.load
            local.tee 5
            i32.store8
            local.get 3
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 4
            i32.const -3
            i32.add
            local.set 4
            local.get 3
            i32.const 3
            i32.add
            local.set 6
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.tee 3
              local.get 1
              local.get 2
              i32.add
              local.tee 7
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 7
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 7
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 7
              i32.const 16
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 2
              i32.const 16
              i32.add
              local.set 2
              local.get 4
              i32.const -16
              i32.add
              local.tee 4
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 2
            i32.add
            local.set 3
            local.get 1
            local.get 2
            i32.add
            i32.const 3
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          local.get 3
          local.get 1
          i32.load
          local.tee 5
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 4
          i32.const -2
          i32.add
          local.set 4
          local.get 3
          i32.const 2
          i32.add
          local.set 6
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 3
            local.get 1
            local.get 2
            i32.add
            local.tee 7
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 7
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 7
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 7
            i32.const 16
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 2
            i32.const 16
            i32.add
            local.set 2
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 6
          local.get 2
          i32.add
          local.set 3
          local.get 1
          local.get 2
          i32.add
          i32.const 2
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        local.get 1
        i32.load
        local.tee 5
        i32.store8
        local.get 4
        i32.const -1
        i32.add
        local.set 4
        local.get 3
        i32.const 1
        i32.add
        local.set 6
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 6
          local.get 2
          i32.add
          local.tee 3
          local.get 1
          local.get 2
          i32.add
          local.tee 7
          i32.const 4
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 7
          i32.const 12
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 7
          i32.const 16
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 2
          i32.const 16
          i32.add
          local.set 2
          local.get 4
          i32.const -16
          i32.add
          local.tee 4
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 6
        local.get 2
        i32.add
        local.set 3
        local.get 1
        local.get 2
        i32.add
        i32.const 1
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        local.get 1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 3
        local.get 1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get 3
        local.get 1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get 3
        local.get 1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get 3
        local.get 1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 3
        local.get 1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get 3
        local.get 1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get 3
        local.get 1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get 3
        i32.const 16
        i32.add
        local.set 3
        local.get 1
        i32.const 16
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        i32.const 2
        i32.add
        local.set 3
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $__strchrnul (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 255
      i32.and
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 16843009
          i32.mul
          local.set 2
          loop  ;; label = @4
            local.get 3
            local.get 2
            i32.xor
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=4
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          i32.load8_u
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 1
          i32.const 255
          i32.and
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      return
    end
    local.get 0
    local.get 0
    call $strlen
    i32.add)
  (func $strncmp (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 255
          i32.and
          local.get 1
          i32.load8_u
          local.tee 5
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 5
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 255
    i32.and
    local.get 1
    i32.load8_u
    i32.sub)
  (func $memset (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 6
      i64.const 32
      i64.shl
      local.get 6
      i64.or
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $_ZN4core3ops8function6FnOnce9call_once17h8440e5f8da065141E (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error8rt_error17h7b91e1460316523cE
    unreachable)
  (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17h7b91e1460316523cE (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $__rust_alloc_error_handler
    unreachable)
  (func $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core10intrinsics17const_eval_select17h2cff8c626c78a75eE
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h6ea290383dd14b9cE (type 7)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1050348
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1050368
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1050376
    call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
    unreachable)
  (func $_ZN4core10intrinsics17const_eval_select17h2cff8c626c78a75eE (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core3ops8function6FnOnce9call_once17h8440e5f8da065141E
    unreachable)
  (func $__rg_oom (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h407e1312cb045d15E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h0166bfc3c5b8521cE (type 1) (param i32))
  (func $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E (type 9) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 6
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1050952
    i32.store offset=8
    local.get 3
    i32.const 6
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17hf6161741f9e5938fE (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.eq
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 1
            local.get 2
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 4)
            local.set 3
            br 3 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 2
        i32.add
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              i32.load
              local.tee 6
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              local.get 1
              local.set 8
              br 1 (;@4;)
            end
            i32.const 0
            local.set 7
            local.get 1
            local.set 8
            loop  ;; label = @5
              local.get 8
              local.tee 3
              local.get 5
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load8_s
                  local.tee 8
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 8
                  i32.const 255
                  i32.and
                  local.tee 8
                  i32.const 224
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 2
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 8
                  i32.const 240
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 3
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 3
                i32.load8_u offset=2
                i32.const 63
                i32.and
                i32.const 6
                i32.shl
                local.get 3
                i32.load8_u offset=1
                i32.const 63
                i32.and
                i32.const 12
                i32.shl
                i32.or
                local.get 3
                i32.load8_u offset=3
                i32.const 63
                i32.and
                i32.or
                local.get 8
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                i32.const 1114112
                i32.eq
                br_if 3 (;@3;)
                local.get 3
                i32.const 4
                i32.add
                local.set 8
              end
              local.get 7
              local.get 3
              i32.sub
              local.get 8
              i32.add
              local.set 7
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          local.get 8
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 8
            i32.load8_u
            local.tee 3
            i32.const 240
            i32.lt_u
            br_if 0 (;@4;)
            local.get 8
            i32.load8_u offset=2
            i32.const 63
            i32.and
            i32.const 6
            i32.shl
            local.get 8
            i32.load8_u offset=1
            i32.const 63
            i32.and
            i32.const 12
            i32.shl
            i32.or
            local.get 8
            i32.load8_u offset=3
            i32.const 63
            i32.and
            i32.or
            local.get 3
            i32.const 18
            i32.shl
            i32.const 1835008
            i32.and
            i32.or
            i32.const 1114112
            i32.eq
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 7
                local.get 2
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 2
                local.set 8
                local.get 7
                local.get 2
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 0
              local.set 3
              local.get 7
              local.set 8
              local.get 1
              local.get 7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 8
            local.set 7
            local.get 1
            local.set 3
          end
          local.get 7
          local.get 2
          local.get 3
          select
          local.set 2
          local.get 3
          local.get 1
          local.get 3
          select
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        return
      end
      local.get 0
      i32.const 12
      i32.add
      i32.load
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          br 1 (;@2;)
        end
        local.get 2
        i32.const 3
        i32.and
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 8
          i32.const 0
          local.get 2
          i32.const -4
          i32.and
          i32.sub
          local.set 6
          local.get 1
          local.set 3
          loop  ;; label = @4
            local.get 8
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 3
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 8
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 6
            i32.const 4
            i32.add
            local.tee 6
            br_if 0 (;@4;)
          end
        end
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 8
          local.get 3
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 5
        local.get 8
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        local.get 5
        local.get 8
        i32.sub
        local.tee 7
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              local.get 0
              i32.load8_u offset=32
              local.tee 8
              local.get 8
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            i32.const 0
            local.set 5
            local.get 7
            local.set 3
            br 1 (;@3;)
          end
          local.get 7
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 7
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 5
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 7
        local.get 0
        i32.load offset=4
        local.set 8
        local.get 0
        i32.load offset=24
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            local.get 8
            local.get 7
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 3
        local.get 8
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 6
        local.get 1
        local.get 2
        local.get 7
        i32.load offset=12
        call_indirect (type 4)
        br_if 1 (;@1;)
        i32.const 0
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            local.get 5
            i32.lt_u
            return
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 6
          local.get 8
          local.get 7
          i32.load offset=16
          call_indirect (type 5)
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const -1
        i32.add
        local.get 5
        i32.lt_u
        return
      end
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 4)
      return
    end
    local.get 3)
  (func $_ZN4core9panicking5panic17he5870e8f24d6369dE (type 9) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1050392
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hcd85138dfe740fedE (type 5) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h8dc081e3c81f9569E)
  (func $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1050432
    i32.store offset=4
    local.get 2
    i32.const 1050392
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt5write17h8c2e21e6e0e7934aE (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 5
            br_if 0 (;@4;)
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.set 1
            local.get 2
            i32.load offset=16
            local.set 0
            local.get 6
            i32.const 3
            i32.shl
            i32.const -8
            i32.add
            i32.const 3
            i32.shr_u
            i32.const 1
            i32.add
            local.tee 4
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=32
                local.get 1
                i32.load
                local.get 7
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 4)
                br_if 4 (;@2;)
              end
              local.get 0
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 0
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 5)
              br_if 3 (;@2;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 2
          i32.const 12
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 5
          i32.shl
          local.tee 8
          i32.const -32
          i32.add
          i32.const 5
          i32.shr_u
          i32.const 1
          i32.add
          local.set 4
          local.get 2
          i32.load
          local.set 1
          i32.const 0
          local.set 6
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=32
              local.get 1
              i32.load
              local.get 0
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 4)
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 5
            local.get 6
            i32.add
            local.tee 0
            i32.const 28
            i32.add
            i32.load8_u
            i32.store8 offset=40
            local.get 3
            local.get 0
            i32.const 4
            i32.add
            i64.load align=4
            i64.const 32
            i64.rotl
            i64.store offset=8
            local.get 0
            i32.const 24
            i32.add
            i32.load
            local.set 9
            local.get 2
            i32.load offset=16
            local.set 10
            i32.const 0
            local.set 11
            i32.const 0
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 9
                i32.const 3
                i32.shl
                local.set 12
                i32.const 0
                local.set 7
                local.get 10
                local.get 12
                i32.add
                local.tee 12
                i32.load offset=4
                i32.const 55
                i32.ne
                br_if 1 (;@5;)
                local.get 12
                i32.load
                i32.load
                local.set 9
              end
              i32.const 1
              local.set 7
            end
            local.get 3
            local.get 9
            i32.store offset=20
            local.get 3
            local.get 7
            i32.store offset=16
            local.get 0
            i32.const 16
            i32.add
            i32.load
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 7
                i32.const 3
                i32.shl
                local.set 9
                local.get 10
                local.get 9
                i32.add
                local.tee 9
                i32.load offset=4
                i32.const 55
                i32.ne
                br_if 1 (;@5;)
                local.get 9
                i32.load
                i32.load
                local.set 7
              end
              i32.const 1
              local.set 11
            end
            local.get 3
            local.get 7
            i32.store offset=28
            local.get 3
            local.get 11
            i32.store offset=24
            local.get 10
            local.get 0
            i32.load
            i32.const 3
            i32.shl
            i32.add
            local.tee 0
            i32.load
            local.get 3
            i32.const 8
            i32.add
            local.get 0
            i32.load offset=4
            call_indirect (type 5)
            br_if 2 (;@2;)
            local.get 1
            i32.const 8
            i32.add
            local.set 1
            local.get 8
            local.get 6
            i32.const 32
            i32.add
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 0
        local.get 4
        local.get 2
        i32.load offset=4
        i32.lt_u
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=32
        local.get 2
        i32.load
        local.get 4
        i32.const 3
        i32.shl
        i32.add
        i32.const 0
        local.get 1
        select
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        i32.load offset=36
        i32.load offset=12
        call_indirect (type 4)
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 0
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5bed4048bbc2dec6E (type 0) (param i32) (result i64)
    i64.const 2560553824161606047)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc1a266519c792b8E (type 5) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1050392
    i32.const 14
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 4))
  (func $_ZN4core5panic8location8Location6caller17h24a125b91919d97fE (type 8) (param i32) (result i32)
    local.get 0)
  (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h4152f979c6421ee3E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 20
    i32.add
    i32.const 6
    i32.store
    local.get 2
    i32.const 12
    i32.add
    i32.const 6
    i32.store
    local.get 2
    i32.const 56
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=8
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=28 align=4
    local.get 2
    i32.const 1050408
    i32.store offset=24
    local.get 2
    local.get 2
    i32.store offset=40
    local.get 1
    local.get 0
    local.get 2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9f28620f2b57af3bE (type 5) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17hf6161741f9e5938fE)
  (func $_ZN4core5panic10panic_info9PanicInfo7payload17h8ebd31f3660fa9e6E (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func $_ZN4core5panic10panic_info9PanicInfo7message17hccba5610b5a2ff2bE (type 8) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic10panic_info9PanicInfo8location17hf914df1247871dbaE (type 8) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h5c934a8d2d54eca2E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.tee 4
      i32.const 1050448
      i32.const 12
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.tee 1
      i32.load offset=12
      call_indirect (type 4)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
          i32.const 57
          i32.store offset=20
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 1
          local.set 3
          local.get 2
          i32.const 60
          i32.add
          i32.const 1
          i32.store
          local.get 2
          i64.const 2
          i64.store offset=44 align=4
          local.get 2
          i32.const 1050464
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 16
          i32.add
          i32.store offset=56
          local.get 4
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.tee 3
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
        i64.const -8867930603987265711
        i64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.store offset=12
        local.get 2
        i32.const 58
        i32.store offset=20
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=16
        i32.const 1
        local.set 3
        local.get 2
        i32.const 60
        i32.add
        i32.const 1
        i32.store
        local.get 2
        i64.const 2
        i64.store offset=44 align=4
        local.get 2
        i32.const 1050464
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 4
        local.get 1
        local.get 2
        i32.const 40
        i32.add
        call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 16
      i32.add
      i32.const 20
      i32.add
      i32.const 6
      i32.store
      local.get 2
      i32.const 16
      i32.add
      i32.const 12
      i32.add
      i32.const 6
      i32.store
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      i32.store offset=32
      local.get 2
      local.get 3
      i32.const 8
      i32.add
      i32.store offset=24
      local.get 2
      i32.const 56
      i32.store offset=20
      local.get 2
      local.get 3
      i32.store offset=16
      local.get 2
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 2
      i64.const 3
      i64.store offset=44 align=4
      local.get 2
      i32.const 1050408
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 4
      local.get 1
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
      local.set 3
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1de63a72c35635d4E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.load
    local.tee 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 4
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb40241d6c1fefe1E (type 5) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17hf6161741f9e5938fE)
  (func $_ZN4core9panicking19assert_failed_inner17h387fb52f23c0e68bE (type 13) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 2
    i32.store offset=12
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 7
    local.get 4
    i32.store offset=20
    local.get 7
    local.get 3
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.and
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 7
          i32.const 1050489
          i32.store offset=24
          i32.const 2
          local.set 0
          br 2 (;@1;)
        end
        local.get 7
        i32.const 1050487
        i32.store offset=24
        i32.const 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1050480
      i32.store offset=24
      i32.const 7
      local.set 0
    end
    local.get 7
    local.get 0
    i32.store offset=28
    block  ;; label = @1
      local.get 5
      i32.load
      br_if 0 (;@1;)
      local.get 7
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 59
      i32.store
      local.get 7
      i32.const 68
      i32.add
      i32.const 59
      i32.store
      local.get 7
      i32.const 88
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 7
      i64.const 4
      i64.store offset=92 align=4
      local.get 7
      i32.const 1050588
      i32.store offset=88
      local.get 7
      i32.const 56
      i32.store offset=60
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=104
      local.get 7
      local.get 7
      i32.const 16
      i32.add
      i32.store offset=72
      local.get 7
      local.get 7
      i32.const 8
      i32.add
      i32.store offset=64
      local.get 7
      local.get 7
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
      unreachable
    end
    local.get 7
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    local.get 5
    i64.load align=4
    i64.store offset=32
    local.get 7
    i32.const 88
    i32.add
    i32.const 20
    i32.add
    i32.const 4
    i32.store
    local.get 7
    i32.const 84
    i32.add
    i32.const 12
    i32.store
    local.get 7
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    i32.const 59
    i32.store
    local.get 7
    i32.const 68
    i32.add
    i32.const 59
    i32.store
    local.get 7
    i64.const 4
    i64.store offset=92 align=4
    local.get 7
    i32.const 1050552
    i32.store offset=88
    local.get 7
    i32.const 56
    i32.store offset=60
    local.get 7
    local.get 7
    i32.const 56
    i32.add
    i32.store offset=104
    local.get 7
    local.get 7
    i32.const 32
    i32.add
    i32.store offset=80
    local.get 7
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=72
    local.get 7
    local.get 7
    i32.const 8
    i32.add
    i32.store offset=64
    local.get 7
    local.get 7
    i32.const 24
    i32.add
    i32.store offset=56
    local.get 7
    i32.const 88
    i32.add
    local.get 6
    call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h13056b39fb558636E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17ha4fa85208398c73cE (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core6result13unwrap_failed17h7bcc0d7a0760c7f6E (type 14) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 5
    i32.const 60
    i32.add
    i32.const 59
    i32.store
    local.get 5
    i64.const 2
    i64.store offset=28 align=4
    local.get 5
    i32.const 1050624
    i32.store offset=24
    local.get 5
    i32.const 56
    i32.store offset=52
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17h186e733959b5d9b3E
    unreachable)
  (func $_ZN4core3fmt9Formatter12pad_integral17h99170bf47446b713E (type 15) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 9
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          local.set 9
          i32.const 0
          local.get 3
          i32.const -4
          i32.and
          i32.sub
          local.set 11
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 9
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 9
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 11
            i32.const 4
            i32.add
            local.tee 11
            br_if 0 (;@4;)
          end
        end
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 9
      local.get 8
      i32.add
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1bd5bb92929e4623E
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 9
                local.get 8
                i32.le_u
                br_if 0 (;@6;)
                local.get 6
                i32.const 8
                i32.and
                br_if 4 (;@2;)
                i32.const 0
                local.set 1
                local.get 9
                local.get 8
                i32.sub
                local.tee 10
                local.set 8
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 9
                local.get 9
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 0
              local.get 7
              local.get 2
              local.get 3
              call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1bd5bb92929e4623E
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=24
              local.get 4
              local.get 5
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 4)
              return
            end
            i32.const 0
            local.set 8
            local.get 10
            local.set 1
            br 1 (;@3;)
          end
          local.get 10
          i32.const 1
          i32.shr_u
          local.set 1
          local.get 10
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 8
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 10
        local.get 0
        i32.load offset=4
        local.set 9
        local.get 0
        i32.load offset=24
        local.set 11
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 9
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1bd5bb92929e4623E
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 4)
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=28
        local.set 10
        local.get 0
        i32.load offset=24
        local.set 11
        i32.const 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 8
              local.set 1
              br 2 (;@3;)
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
        end
        local.get 1
        local.get 8
        i32.lt_u
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.set 6
      local.get 0
      i32.const 48
      i32.store offset=4
      local.get 0
      i32.load8_u offset=32
      local.set 12
      i32.const 1
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=32
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1bd5bb92929e4623E
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      local.get 9
      local.get 8
      i32.sub
      local.tee 10
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1
            local.get 0
            i32.load8_u offset=32
            local.tee 9
            local.get 9
            i32.const 3
            i32.eq
            select
            i32.const 3
            i32.and
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 3
          local.get 10
          local.set 1
          br 1 (;@2;)
        end
        local.get 10
        i32.const 1
        i32.shr_u
        local.set 1
        local.get 10
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      local.set 10
      local.get 0
      i32.load offset=4
      local.set 9
      local.get 0
      i32.load offset=24
      local.set 11
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 11
          local.get 9
          local.get 10
          i32.load offset=16
          call_indirect (type 5)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 1
      local.get 9
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 4)
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 11
      i32.const 0
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          local.get 10
          i32.eq
          br_if 1 (;@2;)
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 11
          local.get 9
          local.get 1
          i32.load offset=16
          call_indirect (type 5)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 1
        local.get 10
        i32.const -1
        i32.add
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 12
      i32.store8 offset=32
      local.get 0
      local.get 6
      i32.store offset=4
      i32.const 0
      return
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1bd5bb92929e4623E (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=16
          call_indirect (type 5)
          br_if 1 (;@2;)
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        local.set 4
      end
      local.get 4
      return
    end
    local.get 0
    i32.load offset=24
    local.get 2
    local.get 3
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 4))
  (func $_ZN4core3fmt9Formatter9write_fmt17h6c8622e8563fd949E (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8c2e21e6e0e7934aE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h3aff92a45835617dE (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1050844
      i32.const 5
      call $_ZN4core3fmt9Formatter3pad17hf6161741f9e5938fE
      return
    end
    local.get 1
    i32.const 1050840
    i32.const 4
    call $_ZN4core3fmt9Formatter3pad17hf6161741f9e5938fE)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h7539079084ec2867E (type 4) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17hf6161741f9e5938fE)
  (func $_ZN4core5slice6memchr19memchr_general_case17hda44e18663407865E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.get 2
            i32.sub
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            local.get 4
            local.get 3
            i32.gt_u
            select
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            local.get 1
            i32.const 255
            i32.and
            local.set 6
            i32.const 1
            local.set 7
            loop  ;; label = @5
              local.get 2
              local.get 5
              i32.add
              i32.load8_u
              local.get 6
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 3
            i32.const -8
            i32.add
            local.tee 8
            i32.gt_u
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 3
          i32.const -8
          i32.add
          local.set 8
          i32.const 0
          local.set 4
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            local.get 4
            i32.add
            local.tee 6
            i32.load
            local.get 5
            i32.xor
            local.tee 7
            i32.const -1
            i32.xor
            local.get 7
            i32.const -16843009
            i32.add
            i32.and
            local.get 6
            i32.const 4
            i32.add
            i32.load
            local.get 5
            i32.xor
            local.tee 6
            i32.const -1
            i32.xor
            local.get 6
            i32.const -16843009
            i32.add
            i32.and
            i32.or
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 4
            i32.const 8
            i32.add
            local.tee 4
            local.get 8
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        i32.const 1050884
        call $_ZN4core5slice5index26slice_start_index_len_fail17h887745b7b186c727E
        unreachable
      end
      block  ;; label = @2
        local.get 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.sub
        local.set 8
        local.get 2
        local.get 4
        i32.add
        local.set 6
        i32.const 0
        local.set 5
        local.get 1
        i32.const 255
        i32.and
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.get 5
            i32.add
            i32.load8_u
            local.get 7
            i32.eq
            br_if 1 (;@3;)
            local.get 8
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i32.eq
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        local.get 4
        local.get 5
        i32.add
        local.set 5
        i32.const 1
        local.set 7
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h8dc081e3c81f9569E (type 16) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1050640
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1050640
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1050640
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1050640
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1050392
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h99170bf47446b713E
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $canonical_abi_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            local.get 3
            br_if 1 (;@3;)
            local.get 2
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          call $__rust_realloc
          local.tee 0
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 3
        local.get 2
        call $__rust_alloc
        local.tee 0
        br_if 1 (;@1;)
        local.get 3
        local.set 1
      end
      local.get 1
      local.get 2
      call $_ZN5alloc5alloc18handle_alloc_error17h1c6eb6052b13db2bE
      unreachable
    end
    local.get 0)
  (func $canonical_abi_free (type 9) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $__rust_dealloc
    end)
  (func $negate.command_export (type 8) (param i32) (result i32)
    call $__wasm_call_ctors
    local.get 0
    call $negate
    call $__wasm_call_dtors)
  (func $canonical_abi_realloc.command_export (type 6) (param i32 i32 i32 i32) (result i32)
    call $__wasm_call_ctors
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $canonical_abi_realloc
    call $__wasm_call_dtors)
  (func $canonical_abi_free.command_export (type 9) (param i32 i32 i32)
    call $__wasm_call_ctors
    local.get 0
    local.get 1
    local.get 2
    call $canonical_abi_free
    call $__wasm_call_dtors)
  (table (;0;) 62 62 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1051552))
  (global (;2;) i32 (i32.const 1051544))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "negate" (func $negate.command_export))
  (export "canonical_abi_realloc" (func $canonical_abi_realloc.command_export))
  (export "canonical_abi_free" (func $canonical_abi_free.command_export))
  (elem (;0;) (i32.const 1) func $_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17h13d4d45c51940704E $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h5dfdf36a35600a9aE $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17ha9bdbbfdea0e322bE $_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h035f1672be97cb5eE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdf654cc4a6e6a9f8E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hcd85138dfe740fedE $_ZN3std5alloc24default_alloc_error_hook17h82a2ed74365a0027E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd84c587d0483aeffE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h039267962f28154aE $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h585ca8dcd3f5855eE $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h5c934a8d2d54eca2E $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17ha4fa85208398c73cE $_ZN4core3ptr87drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$GT$17h87042063d77633c3E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h4e86fb1d82386c43E $_ZN4core3fmt5Write10write_char17h95d63c59e02a9985E $_ZN4core3fmt5Write9write_fmt17h3c2545d59f66358eE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hbca823674aa20c5bE $_ZN4core3fmt5Write10write_char17hf681e23aba91e62dE $_ZN4core3fmt5Write9write_fmt17hdd3d839fce7a1a26E $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7bd728bcba3eb351E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha2f2b8185449260eE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2db4ea1bac5dc6a6E $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc1a266519c792b8E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h47e13853413426f8E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h5748baeb032c1aecE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hc68eb8ca448867e7E $_ZN59_$LT$std..process..ChildStdin$u20$as$u20$std..io..Write$GT$5flush17hb51f2e4dd9b40a5dE $_ZN3std2io5Write9write_all17h25c290ba11a9c807E $_ZN3std2io5Write18write_all_vectored17h58c503d2309a5b25E $_ZN3std2io5Write9write_fmt17h255ca63f35a92f9aE $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h69bbefafa599f43cE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h97635be0c5176ed0E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h876ed54dc6753378E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17hf653219b47ce7809E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17hdb6e4c9933fdce8fE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h46ff9168b2f8fa0aE $_ZN3std2io5Write18write_all_vectored17hc55e6cab93b38a81E $_ZN3std2io5Write9write_fmt17h499981c239d54ae9E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb0574dd988f9b33fE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hff7214791142b36cE $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hd8967a1054efe59eE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h50a414a3690003e2E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h3f8603bdb7d18645E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hf3b8ed47dfcbb509E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h4707d90ad6e74b96E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h395aa64dfd69eb7fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84ad32f0ee919fefE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h2dbf7ebd9995c4e9E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7e3d431c752872e7E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f35cd2a240390bbE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha504f5915fc610bfE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2126233977580b20E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h9b46224e3541c61aE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha5c6af4ec5e0210bE $_ZN4core3ops8function6FnOnce9call_once17h407e1312cb045d15E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9f28620f2b57af3bE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1de63a72c35635d4E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb40241d6c1fefe1E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h13056b39fb558636E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h0166bfc3c5b8521cE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5bed4048bbc2dec6E)
  (data $.rodata (i32.const 1048576) "invalid enum discriminantcrates/play-implA/src/lib.rs\00\00\00\19\00\10\00\1c\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\05\00\00\00library/std/src/thread/mod.rsfailed to generate unique thread ID: bitspace exhausted\89\00\10\007\00\00\00l\00\10\00\1d\00\00\00\f7\03\00\00\11\00\00\00l\00\10\00\1d\00\00\00\fd\03\00\00*\00\00\00RUST_BACKTRACEalready borrowed\00\00l\00\10\00\00\00\00\00failed to write whole buffer\10\01\10\00\1c\00\00\00library/std/src/io/mod.rs\00\00\004\01\10\00\19\00\00\00\10\05\00\00\16\00\00\004\01\10\00\19\00\00\00\f7\05\00\00!\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00formatter error\00\88\01\10\00\0f\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\01\00\00\00\00\00\00\00fatal runtime error: \0a\00\00\c0\01\10\00\15\00\00\00\d5\01\10\00\01\00\00\00stack backtrace:\0a\00\00\00\e8\01\10\00\11\00\00\00note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0a\04\02\10\00X\00\00\00called `Option::unwrap()` on a `None` value\00\14\00\00\00\00\00\00\00\01\00\00\00\15\00\00\00library/std/src/sys_common/thread_info.rs\00\00\00\a0\02\10\00)\00\00\00\16\00\00\003\00\00\00\14\00\00\00\04\00\00\00\04\00\00\00\16\00\00\00memory allocation of  bytes failed\0a\00\ec\02\10\00\15\00\00\00\01\03\10\00\0e\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\17\00\00\00library/std/src/panicking.rs0\03\10\00\1c\00\00\00\c1\00\00\00$\00\00\00Box<dyn Any><unnamed>\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00\0c\00\00\00\04\00\00\00 \00\00\00!\00\00\00\22\00\00\00#\00\00\00$\00\00\00%\00\00\00&\00\00\00thread '' panicked at '', \00\00\c4\03\10\00\08\00\00\00\cc\03\10\00\0f\00\00\00\db\03\10\00\03\00\00\00\d5\01\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\00\04\10\00N\00\00\000\03\10\00\1c\00\00\00\f0\01\00\00\1f\00\00\000\03\10\00\1c\00\00\00\f1\01\00\00\1e\00\00\00\1f\00\00\00\0c\00\00\00\04\00\00\00'\00\00\00\14\00\00\00\08\00\00\00\04\00\00\00(\00\00\00)\00\00\00\10\00\00\00\04\00\00\00*\00\00\00+\00\00\00\14\00\00\00\08\00\00\00\04\00\00\00,\00\00\00-\00\00\00thread panicked while processing panic. aborting.\0a\00\00\c0\04\10\002\00\00\00\0apanicked after panic::always_abort(), aborting.\0a\00\00\00l\00\10\00\00\00\00\00\fc\04\10\001\00\00\00thread panicked while panicking. aborting.\0a\00@\05\10\00+\00\00\00failed to initiate panic, error t\05\10\00 \00\00\00\14\00\00\00\04\00\00\00\04\00\00\00.\00\00\00/\00\00\000\00\00\00\14\00\00\00\04\00\00\00\04\00\00\001\00\00\002\00\00\003\00\00\00\14\00\00\00\04\00\00\00\04\00\00\004\00\00\005\00\00\006\00\00\00advancing IoSlice beyond its length\00\e4\05\10\00#\00\00\00library/std/src/sys/wasi/io.rs\00\00\10\06\10\00\1e\00\00\00\16\00\00\00\0d\00\00\00cannot recursively acquire mutex@\06\10\00 \00\00\00library/std/src/sys/wasi/../unsupported/mutex.rsh\06\10\000\00\00\00\17\00\00\00\09\00\00\00rwlock locked for writing\00\00\00\a8\06\10\00\19\00\00\00/\00library/alloc/src/raw_vec.rs\00\00capacity overflow\00\00\00\ec\06\10\00\11\00\00\00\ce\06\10\00\1c\00\00\00\06\02\00\00\05\00\00\00BorrowMutError:\00\18\07\10\00\00\00\00\00&\07\10\00\01\00\00\00&\07\10\00\01\00\00\00<\00\00\00\00\00\00\00\01\00\00\00=\00\00\00panicked at '', \5c\07\10\00\01\00\00\00]\07\10\00\03\00\00\00matches!===assertion failed: `(left  right)`\0a  left: ``,\0a right: ``: \00\00\00{\07\10\00\19\00\00\00\94\07\10\00\12\00\00\00\a6\07\10\00\0c\00\00\00\b2\07\10\00\03\00\00\00`\00\00\00{\07\10\00\19\00\00\00\94\07\10\00\12\00\00\00\a6\07\10\00\0c\00\00\00\d8\07\10\00\01\00\00\00: \00\00\18\07\10\00\00\00\00\00\fc\07\10\00\02\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899truefalselibrary/core/src/slice/memchr.rs\00\00\00\e1\08\10\00 \00\00\00[\00\00\00\05\00\00\00range start index  out of range for slice of length \14\09\10\00\12\00\00\00&\09\10\00\22\00\00\00")
  (data $.data (i32.const 1050968) "\01\00\00\00\00\00\00\00\01\00\00\00\cc\06\10\00"))
