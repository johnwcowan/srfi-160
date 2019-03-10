#!/bin/sh
# Expand library, implementation and test files
for at in u8 s8 u16 s16 u32 s32 u64 s64 f32 f64 c64 c128; do
    sed "s/@/$at/g" srfi/160/at.sld >srfi/160/$at.sld
    sed "s/@/$at/g" srfi/160/at-133-impl.scm >srfi/160/$at-133-impl.scm
    sed "s/@/$at/g" srfi/160/at-152-impl.scm >srfi/160/$at-152-impl.scm
    sed "s/@/$at/g" srfi/160/at-other-impl.scm >srfi/160/$at-other-impl.scm
    sed "s/@/$at/g" srfi/160/at-tests.scm >srfi/160/$at-tests.scm
done

