.class public Lcom/d/a/a/e/g;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/d/a/a/e/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lcom/d/a/a/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/d/a/a/e/g;

    invoke-direct {v0}, Lcom/d/a/a/e/g;-><init>()V

    sput-object v0, Lcom/d/a/a/e/g;->c:Lcom/d/a/a/e/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/d/a/a/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method
