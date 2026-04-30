.class public Lcom/b/a/d/d/d;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/b/a/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/d/g",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/g",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/b/a/d/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d/d;-><init>()V

    sput-object v0, Lcom/b/a/d/d/d;->a:Lcom/b/a/d/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/b/a/d/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/d/d/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/b/a/d/d/d;->a:Lcom/b/a/d/g;

    check-cast v0, Lcom/b/a/d/d/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/z;II)Lcom/b/a/d/b/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<TT;>;II)",
            "Lcom/b/a/d/b/z",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, ""

    return-object v0
.end method
