.class public Lcom/c/a/a/d;
.super Ljava/lang/RuntimeException;
.source "MalformedUriTemplateException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    iput p2, p0, Lcom/c/a/a/d;->a:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iput p2, p0, Lcom/c/a/a/d;->a:I

    .line 43
    return-void
.end method
