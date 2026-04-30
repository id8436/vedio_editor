package com.google.common.collect;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.util.AbstractQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E> {
    private static final int DEFAULT_CAPACITY = 11;
    private static final int EVEN_POWERS_OF_TWO = 1431655765;
    private static final int ODD_POWERS_OF_TWO = -1431655766;
    private final MinMaxPriorityQueue<E>.Heap maxHeap;

    @VisibleForTesting
    final int maximumSize;
    private final MinMaxPriorityQueue<E>.Heap minHeap;
    private int modCount;
    private Object[] queue;
    private int size;

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create() {
        return new Builder(Ordering.natural()).create();
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create(Iterable<? extends E> iterable) {
        return new Builder(Ordering.natural()).create(iterable);
    }

    public static <B> Builder<B> orderedBy(Comparator<B> comparator) {
        return new Builder<>(comparator);
    }

    public static Builder<Comparable> expectedSize(int i) {
        return new Builder(Ordering.natural()).expectedSize(i);
    }

    public static Builder<Comparable> maximumSize(int i) {
        return new Builder(Ordering.natural()).maximumSize(i);
    }

    @Beta
    public final class Builder<B> {
        private static final int UNSET_EXPECTED_SIZE = -1;
        private final Comparator<B> comparator;
        private int expectedSize;
        private int maximumSize;

        private Builder(Comparator<B> comparator) {
            this.expectedSize = -1;
            this.maximumSize = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
        }

        public Builder<B> expectedSize(int i) {
            Preconditions.checkArgument(i >= 0);
            this.expectedSize = i;
            return this;
        }

        public Builder<B> maximumSize(int i) {
            Preconditions.checkArgument(i > 0);
            this.maximumSize = i;
            return this;
        }

        public <T extends B> MinMaxPriorityQueue<T> create() {
            return create(Collections.emptySet());
        }

        public <T extends B> MinMaxPriorityQueue<T> create(Iterable<? extends T> iterable) {
            MinMaxPriorityQueue<T> minMaxPriorityQueue = new MinMaxPriorityQueue<>(this, MinMaxPriorityQueue.initialQueueSize(this.expectedSize, this.maximumSize, iterable));
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                minMaxPriorityQueue.offer(it.next());
            }
            return minMaxPriorityQueue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T extends B> Ordering<T> ordering() {
            return Ordering.from(this.comparator);
        }
    }

    private MinMaxPriorityQueue(Builder<? super E> builder, int i) {
        Ordering ordering = builder.ordering();
        this.minHeap = new Heap(ordering);
        this.maxHeap = new Heap(ordering.reverse());
        this.minHeap.otherHeap = this.maxHeap;
        this.maxHeap.otherHeap = this.minHeap;
        this.maximumSize = ((Builder) builder).maximumSize;
        this.queue = new Object[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e2) {
        offer(e2);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        boolean z = false;
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            offer(it.next());
            z = true;
        }
        return z;
    }

    @Override // java.util.Queue
    public boolean offer(E e2) {
        Preconditions.checkNotNull(e2);
        this.modCount++;
        int i = this.size;
        this.size = i + 1;
        growIfNeeded();
        heapForIndex(i).bubbleUp(i, e2);
        return this.size <= this.maximumSize || pollLast() != e2;
    }

    @Override // java.util.Queue
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return removeAndGet(0);
    }

    E elementData(int i) {
        return (E) this.queue[i];
    }

    @Override // java.util.Queue
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return elementData(0);
    }

    private int getMaxElementIndex() {
        switch (this.size) {
            case 1:
                break;
            case 2:
                break;
            default:
                if (this.maxHeap.compareElements(1, 2) > 0) {
                    break;
                }
                break;
        }
        return 1;
    }

    public E pollFirst() {
        return poll();
    }

    public E removeFirst() {
        return remove();
    }

    public E peekFirst() {
        return peek();
    }

    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return removeAndGet(getMaxElementIndex());
    }

    public E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return removeAndGet(getMaxElementIndex());
    }

    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return elementData(getMaxElementIndex());
    }

    @VisibleForTesting
    MoveDesc<E> removeAt(int i) {
        Preconditions.checkPositionIndex(i, this.size);
        this.modCount++;
        this.size--;
        if (this.size == i) {
            this.queue[this.size] = null;
            return null;
        }
        E eElementData = elementData(this.size);
        int correctLastElement = heapForIndex(this.size).getCorrectLastElement(eElementData);
        E eElementData2 = elementData(this.size);
        this.queue[this.size] = null;
        MoveDesc<E> moveDescFillHole = fillHole(i, eElementData2);
        if (correctLastElement >= i) {
            return moveDescFillHole;
        }
        if (moveDescFillHole == null) {
            return new MoveDesc<>(eElementData, eElementData2);
        }
        return new MoveDesc<>(eElementData, moveDescFillHole.replaced);
    }

    private MoveDesc<E> fillHole(int i, E e2) {
        MinMaxPriorityQueue<E>.Heap heapHeapForIndex = heapForIndex(i);
        int iFillHoleAt = heapHeapForIndex.fillHoleAt(i);
        int iBubbleUpAlternatingLevels = heapHeapForIndex.bubbleUpAlternatingLevels(iFillHoleAt, e2);
        if (iBubbleUpAlternatingLevels == iFillHoleAt) {
            return heapHeapForIndex.tryCrossOverAndBubbleUp(i, iFillHoleAt, e2);
        }
        if (iBubbleUpAlternatingLevels < i) {
            return new MoveDesc<>(e2, elementData(i));
        }
        return null;
    }

    class MoveDesc<E> {
        final E replaced;
        final E toTrickle;

        MoveDesc(E e2, E e3) {
            this.toTrickle = e2;
            this.replaced = e3;
        }
    }

    private E removeAndGet(int i) {
        E eElementData = elementData(i);
        removeAt(i);
        return eElementData;
    }

    private MinMaxPriorityQueue<E>.Heap heapForIndex(int i) {
        return isEvenLevel(i) ? this.minHeap : this.maxHeap;
    }

    @VisibleForTesting
    static boolean isEvenLevel(int i) {
        int i2 = i + 1;
        Preconditions.checkState(i2 > 0, "negative index");
        return (EVEN_POWERS_OF_TWO & i2) > (i2 & ODD_POWERS_OF_TWO);
    }

    @VisibleForTesting
    boolean isIntact() {
        for (int i = 1; i < this.size; i++) {
            if (!heapForIndex(i).verifyIndex(i)) {
                return false;
            }
        }
        return true;
    }

    class Heap {
        final Ordering<E> ordering;
        MinMaxPriorityQueue<E>.Heap otherHeap;

        Heap(Ordering<E> ordering) {
            this.ordering = ordering;
        }

        int compareElements(int i, int i2) {
            return this.ordering.compare((E) MinMaxPriorityQueue.this.elementData(i), (E) MinMaxPriorityQueue.this.elementData(i2));
        }

        MoveDesc<E> tryCrossOverAndBubbleUp(int i, int i2, E e2) {
            Object objElementData;
            int iCrossOver = crossOver(i2, e2);
            if (iCrossOver == i2) {
                return null;
            }
            if (iCrossOver < i) {
                objElementData = MinMaxPriorityQueue.this.elementData(i);
            } else {
                objElementData = MinMaxPriorityQueue.this.elementData(getParentIndex(i));
            }
            if (this.otherHeap.bubbleUpAlternatingLevels(iCrossOver, e2) < i) {
                return new MoveDesc<>(e2, objElementData);
            }
            return null;
        }

        void bubbleUp(int i, E e2) {
            int iCrossOverUp = crossOverUp(i, e2);
            if (iCrossOverUp != i) {
                this = this.otherHeap;
                i = iCrossOverUp;
            }
            this.bubbleUpAlternatingLevels(i, e2);
        }

        int bubbleUpAlternatingLevels(int i, E e2) {
            while (i > 2) {
                int grandparentIndex = getGrandparentIndex(i);
                Object objElementData = MinMaxPriorityQueue.this.elementData(grandparentIndex);
                if (this.ordering.compare((E) objElementData, e2) <= 0) {
                    break;
                }
                MinMaxPriorityQueue.this.queue[i] = objElementData;
                i = grandparentIndex;
            }
            MinMaxPriorityQueue.this.queue[i] = e2;
            return i;
        }

        int findMin(int i, int i2) {
            if (i >= MinMaxPriorityQueue.this.size) {
                return -1;
            }
            Preconditions.checkState(i > 0);
            int iMin = Math.min(i, MinMaxPriorityQueue.this.size - i2) + i2;
            int i3 = i;
            for (int i4 = i + 1; i4 < iMin; i4++) {
                if (compareElements(i4, i3) < 0) {
                    i3 = i4;
                }
            }
            return i3;
        }

        int findMinChild(int i) {
            return findMin(getLeftChildIndex(i), 2);
        }

        int findMinGrandChild(int i) {
            int leftChildIndex = getLeftChildIndex(i);
            if (leftChildIndex < 0) {
                return -1;
            }
            return findMin(getLeftChildIndex(leftChildIndex), 4);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int crossOverUp(int r6, E r7) {
            /*
                r5 = this;
                r1 = 0
                if (r6 != 0) goto Lc
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r0 = com.google.common.collect.MinMaxPriorityQueue.access$500(r0)
                r0[r1] = r7
            Lb:
                return r1
            Lc:
                int r3 = r5.getParentIndex(r6)
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object r1 = r0.elementData(r3)
                if (r3 == 0) goto L60
                int r0 = r5.getParentIndex(r3)
                int r2 = r5.getRightChildIndex(r0)
                if (r2 == r3) goto L60
                int r0 = r5.getLeftChildIndex(r2)
                com.google.common.collect.MinMaxPriorityQueue r4 = com.google.common.collect.MinMaxPriorityQueue.this
                int r4 = com.google.common.collect.MinMaxPriorityQueue.access$600(r4)
                if (r0 < r4) goto L60
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object r0 = r0.elementData(r2)
                com.google.common.collect.Ordering<E> r4 = r5.ordering
                int r4 = r4.compare(r0, r1)
                if (r4 >= 0) goto L60
                r1 = r2
            L3d:
                com.google.common.collect.Ordering<E> r2 = r5.ordering
                int r2 = r2.compare(r0, r7)
                if (r2 >= 0) goto L56
                com.google.common.collect.MinMaxPriorityQueue r2 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r2 = com.google.common.collect.MinMaxPriorityQueue.access$500(r2)
                r2[r6] = r0
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r0 = com.google.common.collect.MinMaxPriorityQueue.access$500(r0)
                r0[r1] = r7
                goto Lb
            L56:
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r0 = com.google.common.collect.MinMaxPriorityQueue.access$500(r0)
                r0[r6] = r7
                r1 = r6
                goto Lb
            L60:
                r0 = r1
                r1 = r3
                goto L3d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MinMaxPriorityQueue.Heap.crossOverUp(int, java.lang.Object):int");
        }

        int getCorrectLastElement(E e2) {
            int rightChildIndex;
            int parentIndex = getParentIndex(MinMaxPriorityQueue.this.size);
            if (parentIndex != 0 && (rightChildIndex = getRightChildIndex(getParentIndex(parentIndex))) != parentIndex && getLeftChildIndex(rightChildIndex) >= MinMaxPriorityQueue.this.size) {
                Object objElementData = MinMaxPriorityQueue.this.elementData(rightChildIndex);
                if (this.ordering.compare((E) objElementData, e2) < 0) {
                    MinMaxPriorityQueue.this.queue[rightChildIndex] = e2;
                    MinMaxPriorityQueue.this.queue[MinMaxPriorityQueue.this.size] = objElementData;
                    return rightChildIndex;
                }
            }
            return MinMaxPriorityQueue.this.size;
        }

        int crossOver(int i, E e2) {
            int iFindMinChild = findMinChild(i);
            if (iFindMinChild <= 0 || this.ordering.compare((E) MinMaxPriorityQueue.this.elementData(iFindMinChild), e2) >= 0) {
                return crossOverUp(i, e2);
            }
            MinMaxPriorityQueue.this.queue[i] = MinMaxPriorityQueue.this.elementData(iFindMinChild);
            MinMaxPriorityQueue.this.queue[iFindMinChild] = e2;
            return iFindMinChild;
        }

        int fillHoleAt(int i) {
            while (true) {
                int iFindMinGrandChild = findMinGrandChild(i);
                if (iFindMinGrandChild > 0) {
                    MinMaxPriorityQueue.this.queue[i] = MinMaxPriorityQueue.this.elementData(iFindMinGrandChild);
                    i = iFindMinGrandChild;
                } else {
                    return i;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean verifyIndex(int i) {
            if (getLeftChildIndex(i) < MinMaxPriorityQueue.this.size && compareElements(i, getLeftChildIndex(i)) > 0) {
                return false;
            }
            if (getRightChildIndex(i) < MinMaxPriorityQueue.this.size && compareElements(i, getRightChildIndex(i)) > 0) {
                return false;
            }
            if (i <= 0 || compareElements(i, getParentIndex(i)) <= 0) {
                return i <= 2 || compareElements(getGrandparentIndex(i), i) <= 0;
            }
            return false;
        }

        private int getLeftChildIndex(int i) {
            return (i * 2) + 1;
        }

        private int getRightChildIndex(int i) {
            return (i * 2) + 2;
        }

        private int getParentIndex(int i) {
            return (i - 1) / 2;
        }

        private int getGrandparentIndex(int i) {
            return getParentIndex(getParentIndex(i));
        }
    }

    class QueueIterator implements Iterator<E> {
        private boolean canRemove;
        private int cursor;
        private int expectedModCount;
        private Queue<E> forgetMeNot;
        private E lastFromForgetMeNot;
        private List<E> skipMe;

        private QueueIterator() {
            this.cursor = -1;
            this.expectedModCount = MinMaxPriorityQueue.this.modCount;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            checkModCount();
            return nextNotInSkipMe(this.cursor + 1) < MinMaxPriorityQueue.this.size() || !(this.forgetMeNot == null || this.forgetMeNot.isEmpty());
        }

        @Override // java.util.Iterator
        public E next() {
            checkModCount();
            int iNextNotInSkipMe = nextNotInSkipMe(this.cursor + 1);
            if (iNextNotInSkipMe < MinMaxPriorityQueue.this.size()) {
                this.cursor = iNextNotInSkipMe;
                this.canRemove = true;
                return (E) MinMaxPriorityQueue.this.elementData(this.cursor);
            }
            if (this.forgetMeNot != null) {
                this.cursor = MinMaxPriorityQueue.this.size();
                this.lastFromForgetMeNot = this.forgetMeNot.poll();
                if (this.lastFromForgetMeNot != null) {
                    this.canRemove = true;
                    return this.lastFromForgetMeNot;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override // java.util.Iterator
        public void remove() {
            CollectPreconditions.checkRemove(this.canRemove);
            checkModCount();
            this.canRemove = false;
            this.expectedModCount++;
            if (this.cursor < MinMaxPriorityQueue.this.size()) {
                MoveDesc<E> moveDescRemoveAt = MinMaxPriorityQueue.this.removeAt(this.cursor);
                if (moveDescRemoveAt != null) {
                    if (this.forgetMeNot == null) {
                        this.forgetMeNot = new LinkedList();
                        this.skipMe = new ArrayList(3);
                    }
                    this.forgetMeNot.add(moveDescRemoveAt.toTrickle);
                    this.skipMe.add(moveDescRemoveAt.replaced);
                }
                this.cursor--;
                return;
            }
            Preconditions.checkState(removeExact(this.lastFromForgetMeNot));
            this.lastFromForgetMeNot = null;
        }

        private boolean containsExact(Iterable<E> iterable, E e2) {
            Iterator<E> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next() == e2) {
                    return true;
                }
            }
            return false;
        }

        boolean removeExact(Object obj) {
            for (int i = 0; i < MinMaxPriorityQueue.this.size; i++) {
                if (MinMaxPriorityQueue.this.queue[i] == obj) {
                    MinMaxPriorityQueue.this.removeAt(i);
                    return true;
                }
            }
            return false;
        }

        void checkModCount() {
            if (MinMaxPriorityQueue.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int nextNotInSkipMe(int i) {
            if (this.skipMe != null) {
                while (i < MinMaxPriorityQueue.this.size() && containsExact(this.skipMe, MinMaxPriorityQueue.this.elementData(i))) {
                    i++;
                }
            }
            return i;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new QueueIterator();
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i = 0; i < this.size; i++) {
            this.queue[i] = null;
        }
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[this.size];
        System.arraycopy(this.queue, 0, objArr, 0, this.size);
        return objArr;
    }

    public Comparator<? super E> comparator() {
        return this.minHeap.ordering;
    }

    @VisibleForTesting
    int capacity() {
        return this.queue.length;
    }

    @VisibleForTesting
    static int initialQueueSize(int i, int i2, Iterable<?> iterable) {
        if (i == -1) {
            i = 11;
        }
        if (iterable instanceof Collection) {
            i = Math.max(i, ((Collection) iterable).size());
        }
        return capAtMaximumSize(i, i2);
    }

    private void growIfNeeded() {
        if (this.size > this.queue.length) {
            Object[] objArr = new Object[calculateNewCapacity()];
            System.arraycopy(this.queue, 0, objArr, 0, this.queue.length);
            this.queue = objArr;
        }
    }

    private int calculateNewCapacity() {
        int length = this.queue.length;
        return capAtMaximumSize(length < 64 ? (length + 1) * 2 : IntMath.checkedMultiply(length / 2, 3), this.maximumSize);
    }

    private static int capAtMaximumSize(int i, int i2) {
        return Math.min(i - 1, i2) + 1;
    }
}
