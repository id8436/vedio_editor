.class public Lcom/a/a/a/i/a/g;
.super Ljava/lang/Object;
.source "SqlHelper.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/a/a/a/i/a/d;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 268
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/i/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/a/a/a/i/a/d;Z)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/a/a/a/i/a/d;)V
    .locals 6

    .prologue
    .line 272
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/i/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/a/a/a/i/a/d;Z)V

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/a/a/a/i/a/d;Z)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 278
    iput-object p2, p0, Lcom/a/a/a/i/a/g;->b:Ljava/lang/String;

    .line 279
    iput p3, p0, Lcom/a/a/a/i/a/g;->c:I

    .line 280
    iput-object p4, p0, Lcom/a/a/a/i/a/g;->d:Lcom/a/a/a/i/a/d;

    .line 281
    iput-boolean p5, p0, Lcom/a/a/a/i/a/g;->e:Z

    .line 282
    return-void
.end method
