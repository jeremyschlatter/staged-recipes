# Already built, just need to copy.
mkdir $PREFIX/go
cp -r . $PREFIX/go/
cp $PREFIX/go/bin/* $PREFIX/bin/
rm $PREFIX/go/conda_build.sh

# Set up hooks to manage $GOROOT on conda env activation/deactivation
ACTIVATE_DIR="$PREFIX/etc/conda/activate.d"
DEACTIVATE_DIR="$PREFIX/etc/conda/deactivate.d"
mkdir -p $ACTIVATE_DIR
mkdir -p $DEACTIVATE_DIR
cp $RECIPE_DIR/activate.sh $ACTIVATE_DIR/golang_set_goroot.sh
cp $RECIPE_DIR/deactivate.sh $DEACTIVATE_DIR/golang_unset_goroot.sh
