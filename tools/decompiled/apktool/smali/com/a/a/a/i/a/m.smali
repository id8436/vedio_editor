.class Lcom/a/a/a/i/a/m;
.super Ljava/lang/Object;
.source "WhereQueryCache.java"


# instance fields
.field private final a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/a/a/a/i/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/a/a/a/i/a/n;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/i/a/n;-><init>(Lcom/a/a/a/i/a/m;I)V

    iput-object v0, p0, Lcom/a/a/a/i/a/m;->a:Landroid/support/v4/util/LruCache;

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/m;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a(JLcom/a/a/a/j;Ljava/lang/StringBuilder;)Lcom/a/a/a/i/a/l;
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    const-string/jumbo v0, "( ("

    .line 86
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->j:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->j:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= ?) OR "

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v0, Lcom/a/a/a/i/a/a;->i:Lcom/a/a/a/i/a/g;

    iget-object v0, v0, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 96
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= ?)"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v0, " AND ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->l:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IS NULL OR "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->l:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != 1)"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/4 v0, 0x2

    .line 106
    invoke-virtual {p3}, Lcom/a/a/a/j;->f()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    const-string/jumbo v0, " AND "

    .line 108
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->g:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= ?"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/4 v0, 0x3

    .line 113
    :cond_0
    invoke-virtual {p3}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p3}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    const-string/jumbo v1, " AND 0 "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    const-string/jumbo v1, " AND ("

    .line 142
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IS NULL OR "

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NOT IN("

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p3}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 147
    invoke-static {p4, v1}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/StringBuilder;I)V

    .line 149
    const-string/jumbo v1, "))"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p3}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_2
    invoke-virtual {p3}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    const-string/jumbo v1, " AND "

    .line 154
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NOT IN("

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p3}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 157
    invoke-static {p4, v1}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/StringBuilder;I)V

    .line 159
    const-string/jumbo v1, ")"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p3}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_3
    invoke-virtual {p3}, Lcom/a/a/a/j;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const-string/jumbo v1, " AND "

    .line 164
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->h:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != ?"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 169
    :cond_4
    new-array v0, v0, [Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/a/a/a/i/a/l;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/a/a/a/i/a/l;-><init>(JLjava/lang/String;[Ljava/lang/String;)V

    .line 172
    return-object v1

    .line 117
    :cond_5
    const-string/jumbo v1, " AND "

    .line 118
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN ( SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->n:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "job_holder_tags"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->o:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p3}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 123
    invoke-static {p4, v1}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/StringBuilder;I)V

    .line 125
    const-string/jumbo v1, ")"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p3}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/ah;->b:Lcom/a/a/a/ah;

    if-ne v1, v2, :cond_6

    .line 127
    const-string/jumbo v1, ")"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :goto_1
    invoke-virtual {p3}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-virtual {p3}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/ah;->a:Lcom/a/a/a/ah;

    if-ne v1, v2, :cond_7

    .line 129
    const-string/jumbo v1, " GROUP BY (`"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->n:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " HAVING count(*) = "

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {p3}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown constraint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/a/a/a/j;Lcom/a/a/a/i/a/l;)V
    .locals 6

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    iget-object v1, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/a/a/a/j;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 56
    iget-object v0, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/a/a/a/j;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 57
    invoke-virtual {p1}, Lcom/a/a/a/j;->f()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 58
    iget-object v2, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/a/a/a/j;->f()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    iget-object v4, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 63
    goto :goto_1

    :cond_0
    move v1, v0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v4, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    iget-object v4, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/a/a/a/j;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v2, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lcom/a/a/a/i/a/m;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    move v1, v0

    .line 74
    :cond_4
    iget-object v0, p2, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    array-length v0, v0

    if-eq v1, v0, :cond_5

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "something is wrong with where query cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/a/a/a/j;)Z
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 176
    invoke-virtual {p1}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/a/a/a/j;)J
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    shl-int/lit8 v0, v0, 0x0

    .line 186
    invoke-virtual {p1}, Lcom/a/a/a/j;->c()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v0, v3

    .line 187
    invoke-virtual {p1}, Lcom/a/a/a/j;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 188
    invoke-virtual {p1}, Lcom/a/a/a/j;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v3, v0

    .line 189
    invoke-virtual {p1}, Lcom/a/a/a/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v3

    .line 190
    invoke-virtual {p1}, Lcom/a/a/a/j;->f()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_2
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    int-to-long v0, v0

    .line 191
    return-wide v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/a/j;->b()Lcom/a/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/ah;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 189
    goto :goto_1

    :cond_2
    move v1, v2

    .line 190
    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/a/a/a/j;Ljava/lang/StringBuilder;)Lcom/a/a/a/i/a/l;
    .locals 5

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/m;->a(Lcom/a/a/a/j;)Z

    move-result v1

    .line 40
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/m;->b(Lcom/a/a/a/j;)J

    move-result-wide v2

    .line 41
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/i/a/m;->a:Landroid/support/v4/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/i/a/l;

    .line 42
    :goto_0
    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/a/a/a/i/a/m;->a(JLcom/a/a/a/j;Ljava/lang/StringBuilder;)Lcom/a/a/a/i/a/l;

    move-result-object v0

    .line 45
    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/a/a/a/i/a/m;->a:Landroid/support/v4/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/a/a/a/i/a/m;->a(Lcom/a/a/a/j;Lcom/a/a/a/i/a/l;)V

    .line 50
    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
