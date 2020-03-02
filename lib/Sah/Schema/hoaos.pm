package Sah::Schema::hoaos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [hash => {
    summary => 'Hash of (defined-)array-of-(defined-)strings',
    description => <<'_',

_
    of => ['aos', {req=>1}, {}],
    examples => [
        {data=>'a', valid=>0},
        {data=>[], valid=>0},
        {data=>{}, valid=>1},
        {data=>{k=>undef}, valid=>0},
        {data=>{k=>'a'}, valid=>0},
        {data=>{k=>[]}, valid=>1},
        {data=>{k=>{}}, valid=>0},
        {data=>{k=>[], k2=>['a']}, valid=>1},
        {data=>{k=>[], k2=>[[]]}, valid=>0},
        {data=>{k=>[], k2=>[{}]}, valid=>0},
        {data=>{k=>[], k2=>[undef]}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::hoaoms> (hash of (defined-)arrays-of-maybe-strings).
