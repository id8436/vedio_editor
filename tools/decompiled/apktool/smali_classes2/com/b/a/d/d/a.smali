.class public Lcom/b/a/d/d/a;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lcom/b/a/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/d/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/d/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/d/a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/b/a/d/d/a;

    invoke-direct {v0}, Lcom/b/a/d/d/a;-><init>()V

    sput-object v0, Lcom/b/a/d/d/a;->a:Lcom/b/a/d/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/b/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/d/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/b/a/d/d/a;->a:Lcom/b/a/d/d/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
