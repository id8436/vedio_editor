.class final Lf/b;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lf/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/k",
        "<",
        "Ld/bf;",
        "Ld/bf;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lf/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    sput-object v0, Lf/b;->a:Lf/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/bf;)Ld/bf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    invoke-static {p1}, Lf/bb;->a(Ld/bf;)Ld/bf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Ld/bf;->close()V

    .line 82
    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ld/bf;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    check-cast p1, Ld/bf;

    invoke-virtual {p0, p1}, Lf/b;->a(Ld/bf;)Ld/bf;

    move-result-object v0

    return-object v0
.end method
