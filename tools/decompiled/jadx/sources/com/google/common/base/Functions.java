package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public final class Functions {
    private Functions() {
    }

    public static Function<Object, String> toStringFunction() {
        return ToStringFunction.INSTANCE;
    }

    enum ToStringFunction implements Function<Object, String> {
        INSTANCE;

        @Override // com.google.common.base.Function
        public String apply(Object obj) {
            Preconditions.checkNotNull(obj);
            return obj.toString();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "toString";
        }
    }

    public static <E> Function<E, E> identity() {
        return IdentityFunction.INSTANCE;
    }

    /* JADX INFO: loaded from: classes.dex */
    enum IdentityFunction implements Function<Object, Object> {
        INSTANCE;

        @Override // com.google.common.base.Function
        @Nullable
        public Object apply(@Nullable Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "identity";
        }
    }

    public static <K, V> Function<K, V> forMap(Map<K, V> map) {
        return new FunctionForMapNoDefault(map);
    }

    class FunctionForMapNoDefault<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, V> map;

        FunctionForMapNoDefault(Map<K, V> map) {
            this.map = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.base.Function
        public V apply(@Nullable K k) {
            V v = this.map.get(k);
            Preconditions.checkArgument(v != null || this.map.containsKey(k), "Key '%s' not present in map", k);
            return v;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof FunctionForMapNoDefault) {
                return this.map.equals(((FunctionForMapNoDefault) obj).map);
            }
            return false;
        }

        public int hashCode() {
            return this.map.hashCode();
        }

        public String toString() {
            return "forMap(" + this.map + ")";
        }
    }

    public static <K, V> Function<K, V> forMap(Map<K, ? extends V> map, @Nullable V v) {
        return new ForMapWithDefault(map, v);
    }

    class ForMapWithDefault<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final V defaultValue;
        final Map<K, ? extends V> map;

        ForMapWithDefault(Map<K, ? extends V> map, @Nullable V v) {
            this.map = (Map) Preconditions.checkNotNull(map);
            this.defaultValue = v;
        }

        @Override // com.google.common.base.Function
        public V apply(@Nullable K k) {
            V v = this.map.get(k);
            return (v != null || this.map.containsKey(k)) ? v : this.defaultValue;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof ForMapWithDefault)) {
                return false;
            }
            ForMapWithDefault forMapWithDefault = (ForMapWithDefault) obj;
            return this.map.equals(forMapWithDefault.map) && Objects.equal(this.defaultValue, forMapWithDefault.defaultValue);
        }

        public int hashCode() {
            return Objects.hashCode(this.map, this.defaultValue);
        }

        public String toString() {
            return "forMap(" + this.map + ", defaultValue=" + this.defaultValue + ")";
        }
    }

    public static <A, B, C> Function<A, C> compose(Function<B, C> function, Function<A, ? extends B> function2) {
        return new FunctionComposition(function, function2);
    }

    class FunctionComposition<A, B, C> implements Function<A, C>, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Function<A, ? extends B> f3172f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Function<B, C> f3173g;

        public FunctionComposition(Function<B, C> function, Function<A, ? extends B> function2) {
            this.f3173g = (Function) Preconditions.checkNotNull(function);
            this.f3172f = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.google.common.base.Function
        public C apply(@Nullable A a2) {
            return (C) this.f3173g.apply(this.f3172f.apply(a2));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof FunctionComposition)) {
                return false;
            }
            FunctionComposition functionComposition = (FunctionComposition) obj;
            return this.f3172f.equals(functionComposition.f3172f) && this.f3173g.equals(functionComposition.f3173g);
        }

        public int hashCode() {
            return this.f3172f.hashCode() ^ this.f3173g.hashCode();
        }

        public String toString() {
            return this.f3173g + "(" + this.f3172f + ")";
        }
    }

    public static <T> Function<T, Boolean> forPredicate(Predicate<T> predicate) {
        return new PredicateFunction(predicate);
    }

    class PredicateFunction<T> implements Function<T, Boolean>, Serializable {
        private static final long serialVersionUID = 0;
        private final Predicate<T> predicate;

        private PredicateFunction(Predicate<T> predicate) {
            this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Function
        public Boolean apply(@Nullable T t) {
            return Boolean.valueOf(this.predicate.apply(t));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof PredicateFunction) {
                return this.predicate.equals(((PredicateFunction) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        public String toString() {
            return "forPredicate(" + this.predicate + ")";
        }
    }

    public static <E> Function<Object, E> constant(@Nullable E e2) {
        return new ConstantFunction(e2);
    }

    class ConstantFunction<E> implements Function<Object, E>, Serializable {
        private static final long serialVersionUID = 0;
        private final E value;

        public ConstantFunction(@Nullable E e2) {
            this.value = e2;
        }

        @Override // com.google.common.base.Function
        public E apply(@Nullable Object obj) {
            return this.value;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof ConstantFunction) {
                return Objects.equal(this.value, ((ConstantFunction) obj).value);
            }
            return false;
        }

        public int hashCode() {
            if (this.value == null) {
                return 0;
            }
            return this.value.hashCode();
        }

        public String toString() {
            return "constant(" + this.value + ")";
        }
    }

    @Beta
    public static <T> Function<Object, T> forSupplier(Supplier<T> supplier) {
        return new SupplierFunction(supplier);
    }

    class SupplierFunction<T> implements Function<Object, T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Supplier<T> supplier;

        private SupplierFunction(Supplier<T> supplier) {
            this.supplier = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Function
        public T apply(@Nullable Object obj) {
            return this.supplier.get();
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof SupplierFunction) {
                return this.supplier.equals(((SupplierFunction) obj).supplier);
            }
            return false;
        }

        public int hashCode() {
            return this.supplier.hashCode();
        }

        public String toString() {
            return "forSupplier(" + this.supplier + ")";
        }
    }
}
