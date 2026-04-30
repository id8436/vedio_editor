.class public interface abstract Ld/a/e/aj;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Ld/a/e/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ld/a/e/ak;

    invoke-direct {v0}, Ld/a/e/ak;-><init>()V

    sput-object v0, Ld/a/e/aj;->a:Ld/a/e/aj;

    return-void
.end method


# virtual methods
.method public abstract a(ILd/a/e/b;)V
.end method

.method public abstract a(ILe/j;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;Z)Z"
        }
    .end annotation
.end method
