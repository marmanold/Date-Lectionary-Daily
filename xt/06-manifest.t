use Test::More;
eval 'use Test::DistManifest';
if ($@) {
  plan skip_all => 'Test::DistManifest required to test MANIFEST';
}
 
manifest_ok(); # Functionally equivalent to above