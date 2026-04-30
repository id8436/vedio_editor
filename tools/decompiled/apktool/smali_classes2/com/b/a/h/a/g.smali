.class public Lcom/b/a/h/a/g;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/b/a/h/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/h/a/d",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/h/a/g",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/b/a/h/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/h/a/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/b/a/h/a/g;

    invoke-direct {v0}, Lcom/b/a/h/a/g;-><init>()V

    sput-object v0, Lcom/b/a/h/a/g;->a:Lcom/b/a/h/a/g;

    .line 11
    new-instance v0, Lcom/b/a/h/a/h;

    invoke-direct {v0}, Lcom/b/a/h/a/h;-><init>()V

    sput-object v0, Lcom/b/a/h/a/g;->b:Lcom/b/a/h/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/b/a/h/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/h/a/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/b/a/h/a/g;->b:Lcom/b/a/h/a/f;

    return-object v0
.end method

.method public static b()Lcom/b/a/h/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/h/a/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/b/a/h/a/g;->a:Lcom/b/a/h/a/g;

    return-object v0
.end method

.method static synthetic c()Lcom/b/a/h/a/g;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/b/a/h/a/g;->a:Lcom/b/a/h/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/b/a/h/a/e;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
