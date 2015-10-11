#ifndef IMPORT_H
#define IMPORT_H
#include <string>
#include "enums.h"
#include "grid.h"

class Import {
    public:
        Import();
        Import(Grid & lattice);

    private:
        void buildLattice();
        void importNumberRow(int i, std::string row);
        void importHLineRow(int i, std::string row);
        void importVLineRow(int i, std::string row);
        void addHNLine(int m);
        void addVNLine(int m, int n);

        Grid * lattice_;
        int m_;     /* number of rows */
        int n_;     /* number of columns */
};

#endif
