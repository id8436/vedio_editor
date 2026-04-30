.class public Lcom/facebook/d/i/a;
.super Ljava/lang/Object;
.source "SoLoaderShim.java"


# static fields
.field private static volatile a:Lcom/facebook/d/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/d/i/b;

    invoke-direct {v0}, Lcom/facebook/d/i/b;-><init>()V

    sput-object v0, Lcom/facebook/d/i/a;->a:Lcom/facebook/d/i/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/d/i/a;->a:Lcom/facebook/d/i/c;

    invoke-interface {v0, p0}, Lcom/facebook/d/i/c;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
