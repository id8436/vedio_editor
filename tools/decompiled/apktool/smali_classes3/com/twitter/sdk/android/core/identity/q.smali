.class Lcom/twitter/sdk/android/core/identity/q;
.super Ljava/lang/Exception;
.source "WebViewException.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/twitter/sdk/android/core/identity/q;->a:I

    .line 32
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/q;->b:Ljava/lang/String;

    .line 33
    return-void
.end method
