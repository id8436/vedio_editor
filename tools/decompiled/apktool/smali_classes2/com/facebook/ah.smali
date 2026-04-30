.class Lcom/facebook/ah;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# instance fields
.field private final a:Lcom/facebook/GraphRequest;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    iput-object p1, p0, Lcom/facebook/ah;->a:Lcom/facebook/GraphRequest;

    .line 1506
    iput-object p2, p0, Lcom/facebook/ah;->b:Ljava/lang/Object;

    .line 1507
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/GraphRequest;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/facebook/ah;->a:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/facebook/ah;->b:Ljava/lang/Object;

    return-object v0
.end method
