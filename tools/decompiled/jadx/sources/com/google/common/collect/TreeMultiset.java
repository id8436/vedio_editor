package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import com.google.gdata.client.spreadsheet.CellQuery;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class TreeMultiset<E> extends AbstractSortedMultiset<E> implements Serializable {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID = 1;
    private final transient AvlNode<E> header;
    private final transient GeneralRange<E> range;
    private final transient Reference<AvlNode<E>> rootReference;

    /* JADX INFO: loaded from: classes3.dex */
    enum Aggregate {
        SIZE { // from class: com.google.common.collect.TreeMultiset.Aggregate.1
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int nodeAggregate(AvlNode<?> avlNode) {
                return ((AvlNode) avlNode).elemCount;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long treeAggregate(@Nullable AvlNode<?> avlNode) {
                if (avlNode == null) {
                    return 0L;
                }
                return ((AvlNode) avlNode).totalCount;
            }
        },
        DISTINCT { // from class: com.google.common.collect.TreeMultiset.Aggregate.2
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int nodeAggregate(AvlNode<?> avlNode) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long treeAggregate(@Nullable AvlNode<?> avlNode) {
                if (avlNode == null) {
                    return 0L;
                }
                return ((AvlNode) avlNode).distinctElements;
            }
        };

        abstract int nodeAggregate(AvlNode<?> avlNode);

        abstract long treeAggregate(@Nullable AvlNode<?> avlNode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ SortedSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E> TreeMultiset<E> create(@Nullable Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        Iterables.addAll(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    TreeMultiset(Reference<AvlNode<E>> reference, GeneralRange<E> generalRange, AvlNode<E> avlNode) {
        super(generalRange.comparator());
        this.rootReference = reference;
        this.range = generalRange;
        this.header = avlNode;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        this.header = new AvlNode<>(null, 1);
        successor(this.header, this.header);
        this.rootReference = new Reference<>();
    }

    private long aggregateForEntries(Aggregate aggregate) {
        AvlNode<E> avlNode = this.rootReference.get();
        long jTreeAggregate = aggregate.treeAggregate(avlNode);
        if (this.range.hasLowerBound()) {
            jTreeAggregate -= aggregateBelowRange(aggregate, avlNode);
        }
        if (this.range.hasUpperBound()) {
            return jTreeAggregate - aggregateAboveRange(aggregate, avlNode);
        }
        return jTreeAggregate;
    }

    private long aggregateBelowRange(Aggregate aggregate, @Nullable AvlNode<E> avlNode) {
        if (avlNode == null) {
            return 0L;
        }
        int iCompare = comparator().compare(this.range.getLowerEndpoint(), ((AvlNode) avlNode).elem);
        if (iCompare >= 0) {
            if (iCompare == 0) {
                switch (this.range.getLowerBoundType()) {
                    case OPEN:
                        return ((long) aggregate.nodeAggregate(avlNode)) + aggregate.treeAggregate(((AvlNode) avlNode).left);
                    case CLOSED:
                        return aggregate.treeAggregate(((AvlNode) avlNode).left);
                    default:
                        throw new AssertionError();
                }
            }
            return aggregate.treeAggregate(((AvlNode) avlNode).left) + ((long) aggregate.nodeAggregate(avlNode)) + aggregateBelowRange(aggregate, ((AvlNode) avlNode).right);
        }
        return aggregateBelowRange(aggregate, ((AvlNode) avlNode).left);
    }

    private long aggregateAboveRange(Aggregate aggregate, @Nullable AvlNode<E> avlNode) {
        if (avlNode == null) {
            return 0L;
        }
        int iCompare = comparator().compare(this.range.getUpperEndpoint(), ((AvlNode) avlNode).elem);
        if (iCompare <= 0) {
            if (iCompare == 0) {
                switch (this.range.getUpperBoundType()) {
                    case OPEN:
                        return ((long) aggregate.nodeAggregate(avlNode)) + aggregate.treeAggregate(((AvlNode) avlNode).right);
                    case CLOSED:
                        return aggregate.treeAggregate(((AvlNode) avlNode).right);
                    default:
                        throw new AssertionError();
                }
            }
            return aggregate.treeAggregate(((AvlNode) avlNode).right) + ((long) aggregate.nodeAggregate(avlNode)) + aggregateAboveRange(aggregate, ((AvlNode) avlNode).left);
        }
        return aggregateAboveRange(aggregate, ((AvlNode) avlNode).right);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Ints.saturatedCast(aggregateForEntries(Aggregate.SIZE));
    }

    @Override // com.google.common.collect.AbstractMultiset
    int distinctElements() {
        return Ints.saturatedCast(aggregateForEntries(Aggregate.DISTINCT));
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        try {
            AvlNode<E> avlNode = this.rootReference.get();
            if (!this.range.contains(obj) || avlNode == null) {
                return 0;
            }
            return avlNode.count(comparator(), obj);
        } catch (ClassCastException e2) {
            return 0;
        } catch (NullPointerException e3) {
            return 0;
        }
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int add(@Nullable E e2, int i) {
        CollectPreconditions.checkNonnegative(i, "occurrences");
        if (i == 0) {
            return count(e2);
        }
        Preconditions.checkArgument(this.range.contains(e2));
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            comparator().compare(e2, e2);
            AvlNode<E> avlNode2 = new AvlNode<>(e2, i);
            successor(this.header, avlNode2, this.header);
            this.rootReference.checkAndSet(avlNode, avlNode2);
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.checkAndSet(avlNode, avlNode.add(comparator(), e2, i, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int remove(@Nullable Object obj, int i) {
        CollectPreconditions.checkNonnegative(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        AvlNode<E> avlNode = this.rootReference.get();
        int[] iArr = new int[1];
        try {
            if (!this.range.contains(obj) || avlNode == null) {
                return 0;
            }
            this.rootReference.checkAndSet(avlNode, avlNode.remove(comparator(), obj, i, iArr));
            return iArr[0];
        } catch (ClassCastException e2) {
            return 0;
        } catch (NullPointerException e3) {
            return 0;
        }
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int setCount(@Nullable E e2, int i) {
        CollectPreconditions.checkNonnegative(i, "count");
        if (!this.range.contains(e2)) {
            Preconditions.checkArgument(i == 0);
            return 0;
        }
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            if (i <= 0) {
                return 0;
            }
            add(e2, i);
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.checkAndSet(avlNode, avlNode.setCount(comparator(), e2, i, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public boolean setCount(@Nullable E e2, int i, int i2) {
        CollectPreconditions.checkNonnegative(i2, "newCount");
        CollectPreconditions.checkNonnegative(i, "oldCount");
        Preconditions.checkArgument(this.range.contains(e2));
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            if (i != 0) {
                return false;
            }
            if (i2 <= 0) {
                return true;
            }
            add(e2, i2);
            return true;
        }
        int[] iArr = new int[1];
        this.rootReference.checkAndSet(avlNode, avlNode.setCount(comparator(), e2, i, i2, iArr));
        return iArr[0] == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Multiset.Entry<E> wrapEntry(final AvlNode<E> avlNode) {
        return new Multisets.AbstractEntry<E>() { // from class: com.google.common.collect.TreeMultiset.1
            @Override // com.google.common.collect.Multiset.Entry
            public E getElement() {
                return (E) avlNode.getElement();
            }

            @Override // com.google.common.collect.Multiset.Entry
            public int getCount() {
                int count = avlNode.getCount();
                if (count == 0) {
                    return TreeMultiset.this.count(getElement());
                }
                return count;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public AvlNode<E> firstNode() {
        AvlNode<E> avlNodeCeiling;
        if (this.rootReference.get() == null) {
            return null;
        }
        if (this.range.hasLowerBound()) {
            E lowerEndpoint = this.range.getLowerEndpoint();
            avlNodeCeiling = this.rootReference.get().ceiling(comparator(), lowerEndpoint);
            if (avlNodeCeiling == null) {
                return null;
            }
            if (this.range.getLowerBoundType() == BoundType.OPEN && comparator().compare(lowerEndpoint, avlNodeCeiling.getElement()) == 0) {
                avlNodeCeiling = ((AvlNode) avlNodeCeiling).succ;
            }
        } else {
            avlNodeCeiling = ((AvlNode) this.header).succ;
        }
        if (avlNodeCeiling == this.header || !this.range.contains(avlNodeCeiling.getElement())) {
            avlNodeCeiling = null;
        }
        return avlNodeCeiling;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public AvlNode<E> lastNode() {
        AvlNode<E> avlNodeFloor;
        if (this.rootReference.get() == null) {
            return null;
        }
        if (this.range.hasUpperBound()) {
            E upperEndpoint = this.range.getUpperEndpoint();
            avlNodeFloor = this.rootReference.get().floor(comparator(), upperEndpoint);
            if (avlNodeFloor == null) {
                return null;
            }
            if (this.range.getUpperBoundType() == BoundType.OPEN && comparator().compare(upperEndpoint, avlNodeFloor.getElement()) == 0) {
                avlNodeFloor = ((AvlNode) avlNodeFloor).pred;
            }
        } else {
            avlNodeFloor = ((AvlNode) this.header).pred;
        }
        if (avlNodeFloor == this.header || !this.range.contains(avlNodeFloor.getElement())) {
            avlNodeFloor = null;
        }
        return avlNodeFloor;
    }

    @Override // com.google.common.collect.AbstractMultiset
    Iterator<Multiset.Entry<E>> entryIterator() {
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.TreeMultiset.2
            AvlNode<E> current;
            Multiset.Entry<E> prevEntry;

            {
                this.current = TreeMultiset.this.firstNode();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.current == null) {
                    return false;
                }
                if (TreeMultiset.this.range.tooHigh(this.current.getElement())) {
                    this.current = null;
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            public Multiset.Entry<E> next() {
                if (hasNext()) {
                    Multiset.Entry<E> entryWrapEntry = TreeMultiset.this.wrapEntry(this.current);
                    this.prevEntry = entryWrapEntry;
                    if (((AvlNode) this.current).succ == TreeMultiset.this.header) {
                        this.current = null;
                    } else {
                        this.current = ((AvlNode) this.current).succ;
                    }
                    return entryWrapEntry;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                CollectPreconditions.checkRemove(this.prevEntry != null);
                TreeMultiset.this.setCount(this.prevEntry.getElement(), 0);
                this.prevEntry = null;
            }
        };
    }

    @Override // com.google.common.collect.AbstractSortedMultiset
    Iterator<Multiset.Entry<E>> descendingEntryIterator() {
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.TreeMultiset.3
            AvlNode<E> current;
            Multiset.Entry<E> prevEntry = null;

            {
                this.current = TreeMultiset.this.lastNode();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.current == null) {
                    return false;
                }
                if (TreeMultiset.this.range.tooLow(this.current.getElement())) {
                    this.current = null;
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            public Multiset.Entry<E> next() {
                if (hasNext()) {
                    Multiset.Entry<E> entryWrapEntry = TreeMultiset.this.wrapEntry(this.current);
                    this.prevEntry = entryWrapEntry;
                    if (((AvlNode) this.current).pred == TreeMultiset.this.header) {
                        this.current = null;
                    } else {
                        this.current = ((AvlNode) this.current).pred;
                    }
                    return entryWrapEntry;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                CollectPreconditions.checkRemove(this.prevEntry != null);
                TreeMultiset.this.setCount(this.prevEntry.getElement(), 0);
                this.prevEntry = null;
            }
        };
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@Nullable E e2, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e2, boundType)), this.header);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@Nullable E e2, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e2, boundType)), this.header);
    }

    static int distinctElements(@Nullable AvlNode<?> avlNode) {
        if (avlNode == null) {
            return 0;
        }
        return ((AvlNode) avlNode).distinctElements;
    }

    final class Reference<T> {

        @Nullable
        private T value;

        private Reference() {
        }

        @Nullable
        public T get() {
            return this.value;
        }

        public void checkAndSet(@Nullable T t, T t2) {
            if (this.value != t) {
                throw new ConcurrentModificationException();
            }
            this.value = t2;
        }
    }

    final class AvlNode<E> extends Multisets.AbstractEntry<E> {
        private int distinctElements;

        @Nullable
        private final E elem;
        private int elemCount;
        private int height;
        private AvlNode<E> left;
        private AvlNode<E> pred;
        private AvlNode<E> right;
        private AvlNode<E> succ;
        private long totalCount;

        AvlNode(@Nullable E e2, int i) {
            Preconditions.checkArgument(i > 0);
            this.elem = e2;
            this.elemCount = i;
            this.totalCount = i;
            this.distinctElements = 1;
            this.height = 1;
            this.left = null;
            this.right = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int count(Comparator<? super E> comparator, E e2) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare < 0) {
                if (this.left == null) {
                    return 0;
                }
                return this.left.count(comparator, e2);
            }
            if (iCompare > 0) {
                if (this.right != null) {
                    return this.right.count(comparator, e2);
                }
                return 0;
            }
            return this.elemCount;
        }

        private AvlNode<E> addRightChild(E e2, int i) {
            this.right = new AvlNode<>(e2, i);
            TreeMultiset.successor(this, this.right, this.succ);
            this.height = Math.max(2, this.height);
            this.distinctElements++;
            this.totalCount += (long) i;
            return this;
        }

        private AvlNode<E> addLeftChild(E e2, int i) {
            this.left = new AvlNode<>(e2, i);
            TreeMultiset.successor(this.pred, this.left, this);
            this.height = Math.max(2, this.height);
            this.distinctElements++;
            this.totalCount += (long) i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        AvlNode<E> add(Comparator<? super E> comparator, @Nullable E e2, int i, int[] iArr) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return addLeftChild(e2, i);
                }
                int i2 = avlNode.height;
                this.left = avlNode.add(comparator, e2, i, iArr);
                if (iArr[0] == 0) {
                    this.distinctElements++;
                }
                this.totalCount += (long) i;
                return this.left.height != i2 ? rebalance() : this;
            }
            if (iCompare > 0) {
                AvlNode<E> avlNode2 = this.right;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                    return addRightChild(e2, i);
                }
                int i3 = avlNode2.height;
                this.right = avlNode2.add(comparator, e2, i, iArr);
                if (iArr[0] == 0) {
                    this.distinctElements++;
                }
                this.totalCount += (long) i;
                return this.right.height != i3 ? rebalance() : this;
            }
            iArr[0] = this.elemCount;
            Preconditions.checkArgument(((long) this.elemCount) + ((long) i) <= 2147483647L);
            this.elemCount += i;
            this.totalCount += (long) i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        AvlNode<E> remove(Comparator<? super E> comparator, @Nullable E e2, int i, int[] iArr) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.left = avlNode.remove(comparator, e2, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.distinctElements--;
                        this.totalCount -= (long) iArr[0];
                    } else {
                        this.totalCount -= (long) i;
                    }
                }
                return iArr[0] != 0 ? rebalance() : this;
            }
            if (iCompare > 0) {
                AvlNode<E> avlNode2 = this.right;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.right = avlNode2.remove(comparator, e2, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.distinctElements--;
                        this.totalCount -= (long) iArr[0];
                    } else {
                        this.totalCount -= (long) i;
                    }
                }
                return rebalance();
            }
            iArr[0] = this.elemCount;
            if (i >= this.elemCount) {
                return deleteMe();
            }
            this.elemCount -= i;
            this.totalCount -= (long) i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        AvlNode<E> setCount(Comparator<? super E> comparator, @Nullable E e2, int i, int[] iArr) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return i > 0 ? addLeftChild(e2, i) : this;
                }
                this.left = avlNode.setCount(comparator, e2, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.distinctElements--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.distinctElements++;
                }
                this.totalCount += (long) (i - iArr[0]);
                return rebalance();
            }
            if (iCompare > 0) {
                AvlNode<E> avlNode2 = this.right;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                    return i > 0 ? addRightChild(e2, i) : this;
                }
                this.right = avlNode2.setCount(comparator, e2, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.distinctElements--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.distinctElements++;
                }
                this.totalCount += (long) (i - iArr[0]);
                return rebalance();
            }
            iArr[0] = this.elemCount;
            if (i == 0) {
                return deleteMe();
            }
            this.totalCount += (long) (i - this.elemCount);
            this.elemCount = i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        AvlNode<E> setCount(Comparator<? super E> comparator, @Nullable E e2, int i, int i2, int[] iArr) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        return addLeftChild(e2, i2);
                    }
                    return this;
                }
                this.left = avlNode.setCount(comparator, e2, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.distinctElements--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.distinctElements++;
                    }
                    this.totalCount += (long) (i2 - iArr[0]);
                }
                return rebalance();
            }
            if (iCompare > 0) {
                AvlNode<E> avlNode2 = this.right;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        return addRightChild(e2, i2);
                    }
                    return this;
                }
                this.right = avlNode2.setCount(comparator, e2, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.distinctElements--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.distinctElements++;
                    }
                    this.totalCount += (long) (i2 - iArr[0]);
                }
                return rebalance();
            }
            iArr[0] = this.elemCount;
            if (i == this.elemCount) {
                if (i2 == 0) {
                    return deleteMe();
                }
                this.totalCount += (long) (i2 - this.elemCount);
                this.elemCount = i2;
                return this;
            }
            return this;
        }

        private AvlNode<E> deleteMe() {
            int i = this.elemCount;
            this.elemCount = 0;
            TreeMultiset.successor(this.pred, this.succ);
            if (this.left == null) {
                return this.right;
            }
            if (this.right == null) {
                return this.left;
            }
            if (this.left.height >= this.right.height) {
                AvlNode<E> avlNode = this.pred;
                avlNode.left = this.left.removeMax(avlNode);
                avlNode.right = this.right;
                avlNode.distinctElements = this.distinctElements - 1;
                avlNode.totalCount = this.totalCount - ((long) i);
                return avlNode.rebalance();
            }
            AvlNode<E> avlNode2 = this.succ;
            avlNode2.right = this.right.removeMin(avlNode2);
            avlNode2.left = this.left;
            avlNode2.distinctElements = this.distinctElements - 1;
            avlNode2.totalCount = this.totalCount - ((long) i);
            return avlNode2.rebalance();
        }

        private AvlNode<E> removeMin(AvlNode<E> avlNode) {
            if (this.left == null) {
                return this.right;
            }
            this.left = this.left.removeMin(avlNode);
            this.distinctElements--;
            this.totalCount -= (long) avlNode.elemCount;
            return rebalance();
        }

        private AvlNode<E> removeMax(AvlNode<E> avlNode) {
            if (this.right == null) {
                return this.left;
            }
            this.right = this.right.removeMax(avlNode);
            this.distinctElements--;
            this.totalCount -= (long) avlNode.elemCount;
            return rebalance();
        }

        private void recomputeMultiset() {
            this.distinctElements = TreeMultiset.distinctElements(this.left) + 1 + TreeMultiset.distinctElements(this.right);
            this.totalCount = ((long) this.elemCount) + totalCount(this.left) + totalCount(this.right);
        }

        private void recomputeHeight() {
            this.height = Math.max(height(this.left), height(this.right)) + 1;
        }

        private void recompute() {
            recomputeMultiset();
            recomputeHeight();
        }

        private AvlNode<E> rebalance() {
            switch (balanceFactor()) {
                case -2:
                    if (this.right.balanceFactor() > 0) {
                        this.right = this.right.rotateRight();
                    }
                    return rotateLeft();
                case 2:
                    if (this.left.balanceFactor() < 0) {
                        this.left = this.left.rotateLeft();
                    }
                    return rotateRight();
                default:
                    recomputeHeight();
                    return this;
            }
        }

        private int balanceFactor() {
            return height(this.left) - height(this.right);
        }

        private AvlNode<E> rotateLeft() {
            Preconditions.checkState(this.right != null);
            AvlNode<E> avlNode = this.right;
            this.right = avlNode.left;
            avlNode.left = this;
            avlNode.totalCount = this.totalCount;
            avlNode.distinctElements = this.distinctElements;
            recompute();
            avlNode.recomputeHeight();
            return avlNode;
        }

        private AvlNode<E> rotateRight() {
            Preconditions.checkState(this.left != null);
            AvlNode<E> avlNode = this.left;
            this.left = avlNode.right;
            avlNode.right = this;
            avlNode.totalCount = this.totalCount;
            avlNode.distinctElements = this.distinctElements;
            recompute();
            avlNode.recomputeHeight();
            return avlNode;
        }

        private static long totalCount(@Nullable AvlNode<?> avlNode) {
            if (avlNode == null) {
                return 0L;
            }
            return ((AvlNode) avlNode).totalCount;
        }

        private static int height(@Nullable AvlNode<?> avlNode) {
            if (avlNode == null) {
                return 0;
            }
            return ((AvlNode) avlNode).height;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public AvlNode<E> ceiling(Comparator<? super E> comparator, E e2) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare < 0) {
                if (this.left != null) {
                    return (AvlNode) Objects.firstNonNull(this.left.ceiling(comparator, e2), this);
                }
                return this;
            }
            if (iCompare != 0) {
                return this.right == null ? null : this.right.ceiling(comparator, e2);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public AvlNode<E> floor(Comparator<? super E> comparator, E e2) {
            int iCompare = comparator.compare(e2, this.elem);
            if (iCompare > 0) {
                if (this.right != null) {
                    return (AvlNode) Objects.firstNonNull(this.right.floor(comparator, e2), this);
                }
                return this;
            }
            if (iCompare != 0) {
                return this.left == null ? null : this.left.floor(comparator, e2);
            }
            return this;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public E getElement() {
            return this.elem;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            return this.elemCount;
        }

        @Override // com.google.common.collect.Multisets.AbstractEntry, com.google.common.collect.Multiset.Entry
        public String toString() {
            return Multisets.immutableEntry(getElement(), getCount()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(AvlNode<T> avlNode, AvlNode<T> avlNode2) {
        ((AvlNode) avlNode).succ = avlNode2;
        ((AvlNode) avlNode2).pred = avlNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(AvlNode<T> avlNode, AvlNode<T> avlNode2, AvlNode<T> avlNode3) {
        successor(avlNode, avlNode2);
        successor(avlNode2, avlNode3);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        Serialization.writeMultiset(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        Serialization.getFieldSetter(AbstractSortedMultiset.class, "comparator").set(this, comparator);
        Serialization.getFieldSetter(TreeMultiset.class, CellQuery.RANGE).set(this, GeneralRange.all(comparator));
        Serialization.getFieldSetter(TreeMultiset.class, "rootReference").set(this, new Reference());
        AvlNode avlNode = new AvlNode(null, 1);
        Serialization.getFieldSetter(TreeMultiset.class, "header").set(this, avlNode);
        successor(avlNode, avlNode);
        Serialization.populateMultiset(this, objectInputStream);
    }
}
