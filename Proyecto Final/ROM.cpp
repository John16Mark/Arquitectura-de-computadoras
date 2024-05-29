#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>

using namespace std;

int main() {
    ifstream archivo("input.txt");
    if (!archivo.is_open()) {
        cerr << "No se pudo abrir el archivo." << endl;
        return 1;
    }

    vector<string> palabras;
    string linea;
    while (getline(archivo, linea)) {
        istringstream stream(linea);
        string palabra;

        int contador = 0;
        while (stream >> palabra) {
            if(contador == 2) {
                palabras.push_back(palabra);
            }
            contador++;
            contador %= 4;
        }

/*
        // Imprimir las palabras de la línea actual (opcional)
        for (const auto& p : palabras) {
            cout << p << " ";
        }
        cout << endl;  // Nueva línea después de cada línea del archivo
*/
    }
    archivo.close();
    cout << "O <=\t";
    for(int i=0; i<palabras.size(); i++) {
        if(palabras[i] == "ffff")
            break;
        if(i != 0) cout << "\t\t\t";
        cout << "x\"" << palabras[i] << "\" when A=x\"";
        cout << setfill('0') << setw(4) << hex << i;
        cout << "\" else" << endl;
    }
    cout << "\t\t\tx\"ffff\";";
    return 0;
}
