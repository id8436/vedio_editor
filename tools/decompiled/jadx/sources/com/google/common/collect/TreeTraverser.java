package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class TreeTraverser<T> {
    public abstract Iterable<T> children(T t);

    public final FluentIterable<T> preOrderTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.TreeTraverser.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Iterable
            public UnmodifiableIterator<T> iterator() {
                return TreeTraverser.this.preOrderIterator(t);
            }
        };
    }

    UnmodifiableIterator<T> preOrderIterator(T t) {
        return new PreOrderIterator(t);
    }

    final class PreOrderIterator extends UnmodifiableIterator<T> {
        private final LinkedList<Iterator<T>> stack = new LinkedList<>();

        PreOrderIterator(T t) {
            this.stack.addLast(Iterators.singletonIterator(Preconditions.checkNotNull(t)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.stack.isEmpty();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.Iterator
        public T next() {
            Iterator<T> last = this.stack.getLast();
            T t = (T) Preconditions.checkNotNull(last.next());
            if (!last.hasNext()) {
                this.stack.removeLast();
            }
            Iterator<T> it = TreeTraverser.this.children(t).iterator();
            if (it.hasNext()) {
                this.stack.addLast(it);
            }
            return t;
        }
    }

    public final FluentIterable<T> postOrderTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.TreeTraverser.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Iterable
            public UnmodifiableIterator<T> iterator() {
                return TreeTraverser.this.postOrderIterator(t);
            }
        };
    }

    UnmodifiableIterator<T> postOrderIterator(T t) {
        return new PostOrderIterator(t);
    }

    final class PostOrderNode<T> {
        final Iterator<T> childIterator;
        final T root;

        PostOrderNode(T t, Iterator<T> it) {
            this.root = (T) Preconditions.checkNotNull(t);
            this.childIterator = (Iterator) Preconditions.checkNotNull(it);
        }
    }

    final class PostOrderIterator extends AbstractIterator<T> {
        private final LinkedList<PostOrderNode<T>> stack = new LinkedList<>();

        PostOrderIterator(T t) {
            this.stack.addLast(expand(t));
        }

        @Override // com.google.common.collect.AbstractIterator
        protected T computeNext() {
            while (!this.stack.isEmpty()) {
                PostOrderNode<T> last = this.stack.getLast();
                if (last.childIterator.hasNext()) {
                    this.stack.addLast(expand(last.childIterator.next()));
                } else {
                    this.stack.removeLast();
                    return last.root;
                }
            }
            return endOfData();
        }

        private PostOrderNode<T> expand(T t) {
            return new PostOrderNode<>(t, TreeTraverser.this.children(t).iterator());
        }
    }

    public final FluentIterable<T> breadthFirstTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.TreeTraverser.3
            @Override // java.lang.Iterable
            public UnmodifiableIterator<T> iterator() {
                return new BreadthFirstIterator(t);
            }
        };
    }

    final class BreadthFirstIterator extends UnmodifiableIterator<T> implements PeekingIterator<T> {
        private final Queue<T> queue = new LinkedList();

        BreadthFirstIterator(T t) {
            this.queue.add(t);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.queue.isEmpty();
        }

        @Override // com.google.common.collect.PeekingIterator
        public T peek() {
            return this.queue.element();
        }

        @Override // java.util.Iterator, com.google.common.collect.PeekingIterator
        public T next() {
            T tRemove = this.queue.remove();
            Iterables.addAll(this.queue, TreeTraverser.this.children(tRemove));
            return tRemove;
        }
    }
}
