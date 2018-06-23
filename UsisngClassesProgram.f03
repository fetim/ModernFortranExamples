program my_prog
    use obj_class    
    implicit none

    integer  :: mval
    real     :: rval

    integer, parameter   :: ns = 10

    type(obj)    :: this_obj, that_obj

    this_obj = obj(ns)
    that_obj = obj(ns)

    print*, this_obj%a(3,3)

    rval = 30.
    mval = 15

    call this_obj%change_obj(mval,rval)

    print*, this_obj%a(3,3)

    print*, this_obj%a(3,3), that_obj%a(3,3)
    call that_obj%del_obj()
    
end program my_prog
