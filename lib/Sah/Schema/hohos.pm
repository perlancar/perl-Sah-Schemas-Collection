package Sah::Schema::hohos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [hash => {
    summary => 'Hash of (defined-)hash-of-(defined-)strings',
    description => <<'_',

_
    of => ['hos', {req=>1}, {}],
    examples => [
        {data=>'a', valid=>0},
        {data=>[], valid=>0},
        {data=>{}, valid=>1},
        {data=>{k=>undef}, valid=>0},
        {data=>{k=>'a'}, valid=>0},
        {data=>{k=>[]}, valid=>0},
        {data=>{k=>{}}, valid=>1},
        {data=>{k=>{}, k2=>{k=>'a'}}, valid=>1},
        {data=>{k=>{}, k2=>{k=>[]}}, valid=>0},
        {data=>{k=>{}, k2=>{k=>{}}}, valid=>0},
        {data=>{k=>{}, k2=>{k=>undef}}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::hohoms> (hash of (defined-)hashes-of-(maybe-)-strings).
