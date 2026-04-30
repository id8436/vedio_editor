.class public Lcom/b/a/d/d/f/e;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lcom/b/a/d/d/f/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/d/d/f/c",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/d/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/d/f/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/b/a/d/d/f/e;

    invoke-direct {v0}, Lcom/b/a/d/d/f/e;-><init>()V

    sput-object v0, Lcom/b/a/d/d/f/e;->a:Lcom/b/a/d/d/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/b/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/d/d/f/c",
            "<TZ;TZ;>;"
        }
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/b/a/d/d/f/e;->a:Lcom/b/a/d/d/f/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/z;)Lcom/b/a/d/b/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<TZ;>;)",
            "Lcom/b/a/d/b/z",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ""

    return-object v0
.end method
