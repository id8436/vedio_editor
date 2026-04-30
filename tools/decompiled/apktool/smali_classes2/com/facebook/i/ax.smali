.class public Lcom/facebook/i/ax;
.super Ljava/lang/Object;
.source "Utility.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/i/aw;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/i/x;


# direct methods
.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/i/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/i/aw;",
            ">;>;",
            "Lcom/facebook/i/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean p1, p0, Lcom/facebook/i/ax;->a:Z

    .line 145
    iput-object p2, p0, Lcom/facebook/i/ax;->b:Ljava/lang/String;

    .line 146
    iput-boolean p3, p0, Lcom/facebook/i/ax;->c:Z

    .line 147
    iput-object p4, p0, Lcom/facebook/i/ax;->d:Ljava/util/Map;

    .line 148
    iput-object p5, p0, Lcom/facebook/i/ax;->e:Lcom/facebook/i/x;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/i/x;Lcom/facebook/i/at;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/facebook/i/ax;-><init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/i/x;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/i/ax;->a:Z

    return v0
.end method

.method public b()Lcom/facebook/i/x;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/i/ax;->e:Lcom/facebook/i/x;

    return-object v0
.end method
