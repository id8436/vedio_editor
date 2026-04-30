.class Lcom/a/a/a/i/a/n;
.super Landroid/support/v4/util/LruCache;
.source "WhereQueryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/a/a/a/i/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/i/a/m;


# direct methods
.method constructor <init>(Lcom/a/a/a/i/a/m;I)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/a/a/a/i/a/n;->a:Lcom/a/a/a/i/a/m;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(ZLjava/lang/Long;Lcom/a/a/a/i/a/l;Lcom/a/a/a/i/a/l;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p3}, Lcom/a/a/a/i/a/l;->a()V

    .line 29
    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lcom/a/a/a/i/a/l;

    check-cast p4, Lcom/a/a/a/i/a/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/a/i/a/n;->a(ZLjava/lang/Long;Lcom/a/a/a/i/a/l;Lcom/a/a/a/i/a/l;)V

    return-void
.end method
