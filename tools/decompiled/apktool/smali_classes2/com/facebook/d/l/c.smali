.class public Lcom/facebook/d/l/c;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/facebook/d/l/a;


# static fields
.field private static final a:Lcom/facebook/d/l/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/facebook/d/l/c;

    invoke-direct {v0}, Lcom/facebook/d/l/c;-><init>()V

    sput-object v0, Lcom/facebook/d/l/c;->a:Lcom/facebook/d/l/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static b()Lcom/facebook/d/l/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/d/l/c;->a:Lcom/facebook/d/l/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
