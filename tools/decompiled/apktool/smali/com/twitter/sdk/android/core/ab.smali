.class public Lcom/twitter/sdk/android/core/ab;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/twitter/sdk/android/core/j;

.field final c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final d:Ljava/util/concurrent/ExecutorService;

.field final e:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/twitter/sdk/android/core/ab;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/twitter/sdk/android/core/ab;->b:Lcom/twitter/sdk/android/core/j;

    .line 38
    iput-object p3, p0, Lcom/twitter/sdk/android/core/ab;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 39
    iput-object p4, p0, Lcom/twitter/sdk/android/core/ab;->d:Ljava/util/concurrent/ExecutorService;

    .line 40
    iput-object p5, p0, Lcom/twitter/sdk/android/core/ab;->e:Ljava/lang/Boolean;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/ac;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/ab;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V

    return-void
.end method
