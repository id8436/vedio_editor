package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.hash.BloomFilterStrategies;
import java.io.Serializable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class BloomFilter<T> implements Predicate<T>, Serializable {
    private static final Strategy DEFAULT_STRATEGY = getDefaultStrategyFromSystemProperty();

    @VisibleForTesting
    static final String USE_MITZ32_PROPERTY = "com.google.common.hash.BloomFilter.useMitz32";
    private final BloomFilterStrategies.BitArray bits;
    private final Funnel<T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    /* JADX INFO: loaded from: classes3.dex */
    interface Strategy extends Serializable {
        <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.BitArray bitArray);

        int ordinal();

        <T> boolean put(T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.BitArray bitArray);
    }

    private BloomFilter(BloomFilterStrategies.BitArray bitArray, int i, Funnel<T> funnel, Strategy strategy) {
        Preconditions.checkArgument(i > 0, "numHashFunctions (%s) must be > 0", Integer.valueOf(i));
        Preconditions.checkArgument(i <= 255, "numHashFunctions (%s) must be <= 255", Integer.valueOf(i));
        this.bits = (BloomFilterStrategies.BitArray) Preconditions.checkNotNull(bitArray);
        this.numHashFunctions = i;
        this.funnel = (Funnel) Preconditions.checkNotNull(funnel);
        this.strategy = (Strategy) Preconditions.checkNotNull(strategy);
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.copy(), this.numHashFunctions, this.funnel, this.strategy);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean mightContain(T t) {
        return this.strategy.mightContain(t, this.funnel, this.numHashFunctions, this.bits);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(T t) {
        return mightContain(t);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean put(T t) {
        return this.strategy.put(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public double expectedFpp() {
        return Math.pow(this.bits.bitCount() / bitSize(), this.numHashFunctions);
    }

    @VisibleForTesting
    long bitSize() {
        return this.bits.bitSize();
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        Preconditions.checkArgument(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        Preconditions.checkArgument(this.numHashFunctions == bloomFilter.numHashFunctions, "BloomFilters must have the same number of hash functions (%s != %s)", Integer.valueOf(this.numHashFunctions), Integer.valueOf(bloomFilter.numHashFunctions));
        Preconditions.checkArgument(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", Long.valueOf(bitSize()), Long.valueOf(bloomFilter.bitSize()));
        Preconditions.checkArgument(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        Preconditions.checkArgument(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.putAll(bloomFilter.bits);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    @VisibleForTesting
    static Strategy getDefaultStrategyFromSystemProperty() {
        return Boolean.parseBoolean(System.getProperty(USE_MITZ32_PROPERTY)) ? BloomFilterStrategies.MURMUR128_MITZ_32 : BloomFilterStrategies.MURMUR128_MITZ_64;
    }

    public static <T> BloomFilter<T> create(Funnel<T> funnel, int i, double d2) {
        return create(funnel, i, d2, DEFAULT_STRATEGY);
    }

    @VisibleForTesting
    static <T> BloomFilter<T> create(Funnel<T> funnel, int i, double d2, Strategy strategy) {
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(i >= 0, "Expected insertions (%s) must be >= 0", Integer.valueOf(i));
        Preconditions.checkArgument(d2 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d2));
        Preconditions.checkArgument(d2 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d2));
        Preconditions.checkNotNull(strategy);
        int i2 = i != 0 ? i : 1;
        long jOptimalNumOfBits = optimalNumOfBits(i2, d2);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.BitArray(jOptimalNumOfBits), optimalNumOfHashFunctions(i2, jOptimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + jOptimalNumOfBits + " bits", e2);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<T> funnel, int i) {
        return create(funnel, i, 0.03d);
    }

    @VisibleForTesting
    static int optimalNumOfHashFunctions(long j, long j2) {
        return Math.max(1, (int) Math.round((j2 / j) * Math.log(2.0d)));
    }

    @VisibleForTesting
    static long optimalNumOfBits(long j, double d2) {
        if (d2 == 0.0d) {
            d2 = Double.MIN_VALUE;
        }
        return (long) (((-j) * Math.log(d2)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    private Object writeReplace() {
        return new SerialForm(this);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class SerialForm<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] data;
        final Funnel<T> funnel;
        final int numHashFunctions;
        final Strategy strategy;

        SerialForm(BloomFilter<T> bloomFilter) {
            this.data = ((BloomFilter) bloomFilter).bits.data;
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.BitArray(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }
}
