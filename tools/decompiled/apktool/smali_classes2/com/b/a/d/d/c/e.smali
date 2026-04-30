.class public Lcom/b/a/d/d/c/e;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/d/d/c/g;


# instance fields
.field private final b:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/b/a/d/d/c/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/d/d/c/g;-><init>(Lcom/b/a/d/d/c/f;)V

    sput-object v0, Lcom/b/a/d/d/c/e;->a:Lcom/b/a/d/d/c/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/b/a/d/d/c/a;

    invoke-direct {v0}, Lcom/b/a/d/d/c/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d/c/e;->b:Lcom/b/a/d/e;

    .line 26
    new-instance v0, Lcom/b/a/d/c/v;

    invoke-direct {v0}, Lcom/b/a/d/c/v;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d/c/e;->c:Lcom/b/a/d/b;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/b/a/d/d/c/e;->b:Lcom/b/a/d/e;

    return-object v0
.end method

.method public b()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/b/a/d/d/c/e;->a:Lcom/b/a/d/d/c/g;

    return-object v0
.end method

.method public c()Lcom/b/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/b/a/d/d/c/e;->c:Lcom/b/a/d/b;

    return-object v0
.end method

.method public d()Lcom/b/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/f",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/b/a/d/d/b;->b()Lcom/b/a/d/d/b;

    move-result-object v0

    return-object v0
.end method
