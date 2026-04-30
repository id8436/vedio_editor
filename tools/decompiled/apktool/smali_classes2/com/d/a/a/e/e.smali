.class public Lcom/d/a/a/e/e;
.super Lcom/d/a/a/e/g;
.source "DefaultPrettyPrinter.java"


# static fields
.field public static final a:Lcom/d/a/a/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/d/a/a/e/e;

    invoke-direct {v0}, Lcom/d/a/a/e/e;-><init>()V

    sput-object v0, Lcom/d/a/a/e/e;->a:Lcom/d/a/a/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/d/a/a/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/d/a/a/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 398
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method
