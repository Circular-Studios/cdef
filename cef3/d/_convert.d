import std.process, std.file;

void main()
{
    foreach( name; dirEntries( "../include/capi/", SpanMode.breadth ) )
        wait( spawnProcess( [ "htod", name, "-D_WIN32", "-D_MSC_VER", "-I..", "-IC:/D/dm/include" ] ) );
}
