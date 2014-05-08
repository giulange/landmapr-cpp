/*
 * 	see ---> http://forums.devshed.com/programming-42/printing-float-hex-567826.html
 */

#include <string>
#include <sstream>
#include <iomanip>
#include <iostream>
/*
bool isLittleEndian()
{
    static bool little_endian ;
    static bool endian_checked = false ;
    // runtime endianness check (once only)
    if( !endian_checked )
    {
        const short endian_test_pattern = 0x00ff ;
        little_endian = *(reinterpret_cast<const char*>(&endian_test_pattern)) == '\xff' ;
        endian_checked = true ;
    }
 
    return little_endian ;
}
*/

extern "C"
template <class T> 
std::string type_to_hex( const T arg )
{
    std::ostringstream hexstr ;
    const char* addr = reinterpret_cast<const char*>(&arg) ;
 
    //hexstr << "0x" ;
    hexstr << std::setw(2) << std::setprecision(2) << std::setfill('0') << std::hex ;
 
/*
    if( isLittleEndian() )
    {
        for( int b = sizeof(arg) - 1; b >= 0; b-- )
        {
            hexstr << static_cast<unsigned>(*(addr+b) & 0xff) ;
        }
    }
    else
    {
*/		// Big Endian:
        for( int b = 0; b < sizeof(arg); b++ )
        {
            hexstr << static_cast<unsigned>(*(addr+b) & 0xff) ;
        }
//    }
    return hexstr.str() ;
}

/*
using std::cout ;
using std::endl ;
int main()
{
    const int i = 123 ;
    const float f = 0.123f ;
    const double d = 0.5 ;
    const long double ld = 0.123L ;
    const struct{ int x; int y; } s = { 123, 321 } ;
 
    cout << "i:  " << type_to_hex( i ) << endl ;
    cout << "f:  " << type_to_hex( f ) << endl ;
    cout << "d:  " << type_to_hex( d ) << endl ;
    cout << "ld: " << type_to_hex( ld ) << endl ;
    //cout << "s:  " << type_to_hex( s ) << endl ;
 
    cout << "f using cast method: 0x" << std::hex << *((int*)&f) << endl ;
}
*/
