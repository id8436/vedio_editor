.class public final Ld/k;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ld/j;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Ld/j;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Ld/k;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/j;-><init>(Ljava/util/Set;Ld/a/i/c;)V

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;
    .locals 5

    .prologue
    .line 331
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pattern == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 334
    iget-object v3, p0, Ld/k;->a:Ljava/util/List;

    new-instance v4, Ld/l;

    invoke-direct {v4, p1, v2}, Ld/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return-object p0
.end method
