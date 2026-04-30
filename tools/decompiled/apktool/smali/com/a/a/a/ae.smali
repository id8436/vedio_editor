.class public Lcom/a/a/a/ae;
.super Ljava/lang/Object;
.source "RetryConstraint.java"


# static fields
.field public static final a:Lcom/a/a/a/ae;

.field public static final b:Lcom/a/a/a/ae;


# instance fields
.field private c:Z

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Integer;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/a/a/a/af;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/a/a/af;-><init>(Z)V

    sput-object v0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/ae;

    .line 17
    new-instance v0, Lcom/a/a/a/af;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/af;-><init>(Z)V

    sput-object v0, Lcom/a/a/a/ae;->b:Lcom/a/a/a/ae;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/ae;->f:Z

    .line 24
    iput-boolean p1, p0, Lcom/a/a/a/ae;->c:Z

    .line 25
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/a/a/a/ae;->c:Z

    return v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/a/ae;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/a/a/a/ae;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/a/a/a/ae;->f:Z

    return v0
.end method
