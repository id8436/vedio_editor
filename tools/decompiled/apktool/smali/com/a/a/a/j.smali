.class public Lcom/a/a/a/j;
.super Ljava/lang/Object;
.source "Constraint.java"


# instance fields
.field private a:I

.field private b:Lcom/a/a/a/ah;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Long;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/j;->c:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/j;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/a/a/a/j;->a:I

    return v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/a/a/a/j;->a:I

    .line 93
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/a/a/a/j;->h:J

    .line 112
    return-void
.end method

.method a(Lcom/a/a/a/ah;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/ah;

    .line 97
    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/a/a/a/j;->g:Ljava/lang/Long;

    .line 134
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/a/a/a/j;->f:Z

    .line 101
    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/a/a/a/j;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/a/a/a/j;->c:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public b()Lcom/a/a/a/ah;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/ah;

    return-object v0
.end method

.method b(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/a/a/a/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/a/a/a/j;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/a/a/a/j;->c:Ljava/util/Set;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/a/a/a/j;->f:Z

    return v0
.end method

.method public f()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/a/a/a/j;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/a/a/a/j;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/a/a/a/j;->h:J

    return-wide v0
.end method

.method i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/a/j;->a:I

    .line 138
    iput-object v1, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/ah;

    .line 139
    iget-object v0, p0, Lcom/a/a/a/j;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 140
    iget-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/a/a/a/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/j;->f:Z

    .line 143
    iput-object v1, p0, Lcom/a/a/a/j;->g:Ljava/lang/Long;

    .line 144
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/a/a/a/j;->h:J

    .line 145
    return-void
.end method
