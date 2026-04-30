.class Lcom/twitter/sdk/android/core/identity/m;
.super Ljava/lang/Object;
.source "TwitterAuthClient.java"


# static fields
.field private static final a:Lcom/twitter/sdk/android/core/identity/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/sdk/android/core/identity/b;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/b;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/identity/m;->a:Lcom/twitter/sdk/android/core/identity/b;

    return-void
.end method

.method static synthetic a()Lcom/twitter/sdk/android/core/identity/b;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/twitter/sdk/android/core/identity/m;->a:Lcom/twitter/sdk/android/core/identity/b;

    return-object v0
.end method
