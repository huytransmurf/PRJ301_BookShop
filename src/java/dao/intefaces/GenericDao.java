package dao.intefaces;

import java.util.List;

public interface GenericDao<T> {

    List<T> getAll();

    T getById(int id);

    void insert(T object);

    void update(T object);

    void delete(int id);
}
