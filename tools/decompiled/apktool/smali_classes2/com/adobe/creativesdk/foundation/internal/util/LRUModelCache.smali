.class public Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;
.super Ljava/lang/Object;
.source "LRUModelCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key_t:",
        "Ljava/lang/Object;",
        "Value_t:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _mLRUCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TKey_t;TValue_t;>;"
        }
    .end annotation
.end field

.field _maxItems:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_maxItems:I

    .line 29
    new-instance v0, Landroid/util/LruCache;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_maxItems:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_mLRUCache:Landroid/util/LruCache;

    .line 30
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey_t;TValue_t;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_mLRUCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_mLRUCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 45
    return-void
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey_t;)TValue_t;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_mLRUCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey_t;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/util/LRUModelCache;->_mLRUCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
