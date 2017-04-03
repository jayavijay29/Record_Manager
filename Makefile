all: test_assign3 test_expr

test_assign3: test_assign3_1.o record_mgr.o rm_serializer.o expr.o storage_mgr.o dberror.o buffer_mgr_stat.o buffer_mgr.o
	gcc test_assign3_1.o record_mgr.o rm_serializer.o expr.o storage_mgr.o dberror.o buffer_mgr_stat.o buffer_mgr.o -o test_assign3

test_expr: test_expr.o record_mgr.o rm_serializer.o expr.o storage_mgr.o dberror.o buffer_mgr_stat.o buffer_mgr.o
	gcc test_expr.o record_mgr.o rm_serializer.o expr.o storage_mgr.o dberror.o buffer_mgr_stat.o buffer_mgr.o -o test_expr
	
test_assign3_1.o: test_assign3_1.c
	gcc -c test_assign3_1.c

test_expr.o: test_expr.c
	gcc -c test_expr.c

record_mgr.o: record_mgr.c
	gcc -c record_mgr.c

rm_serializer.o: rm_serializer.c
	gcc -c rm_serializer.c

expr.o: expr.c
	gcc -c expr.c

storage_mgr.o: storage_mgr.c
	gcc -c storage_mgr.c

dberror.o: dberror.c
	gcc -c dberror.c

buffer_mgr.o: buffer_mgr.c
	gcc -c buffer_mgr.c

buffer_mgr_stat.o: buffer_mgr_stat.c
	gcc -c buffer_mgr_stat.c

clean:
	rm -rf *o test_assign3
	rm -rf *o test_expr
