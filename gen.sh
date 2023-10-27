#!/bin/bash

read -p "Enter class name: " classname

hpp_filename="${classname}.hpp"
cat > "$hpp_filename" <<EOF
#ifndef ${classname}_HPP
#define ${classname}_HPP

class ${classname} {
public:
    ${classname}();
    ${classname}(const ${classname}& other);
    ~${classname}();
    ${classname}& operator=(const ${classname}& other); 
};

#endif // ${classname}_HPP
EOF

# Generate cpp file
cpp_filename="${classname}.cpp"
cat > "$cpp_filename" <<EOF
#include "${classname}.hpp"

${classname}::${classname}() {
}

${classname}::${classname}(const ${classname}& other) {
}

${classname}::~${classname}() {
}

${classname}& ${classname}::operator=(const ${classname}& other) {
    if (this != &other) {
    }
    return *this;
}

EOF

echo "Class files generated: ${hpp_filename}, ${cpp_filename}"