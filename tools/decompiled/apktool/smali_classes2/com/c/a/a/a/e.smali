.class public final Lcom/c/a/a/a/e;
.super Ljava/lang/Object;
.source "VarSpec.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/c/a/a/a/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "([\\w\\_\\.]|%[A-Fa-f0-9]{2})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/a/e;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/c/a/a/a/a;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/c/a/a/a/e;-><init>(Ljava/lang/String;Lcom/c/a/a/a/a;Ljava/lang/Integer;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/c/a/a/a/a;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/c/a/a/a/a;->a:Lcom/c/a/a/a/a;

    iput-object v0, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/e;->d:Ljava/lang/Integer;

    .line 98
    iput-object p2, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    .line 99
    iput-object p1, p0, Lcom/c/a/a/a/e;->c:Ljava/lang/String;

    .line 100
    if-eqz p3, :cond_0

    .line 102
    iput-object p3, p0, Lcom/c/a/a/a/e;->d:Ljava/lang/Integer;

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/a/e;->f()V

    .line 105
    invoke-direct {p0}, Lcom/c/a/a/a/e;->e()V

    .line 106
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "([\\w.~\\-\\_]|%[A-Fa-f0-9]{2})"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    sget-object v2, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    if-ne v1, v2, :cond_0

    .line 125
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/c/a/a/a/e;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/e;->f:Ljava/lang/String;

    .line 132
    return-void

    .line 129
    :cond_0
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    const/16 v4, 0x2a

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    sget-object v1, Lcom/c/a/a/a/a;->a:Lcom/c/a/a/a/a;

    if-eq v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    sget-object v1, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    invoke-virtual {v1}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 177
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    sget-object v1, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    .line 197
    :cond_1
    :goto_0
    sget-object v0, Lcom/c/a/a/a/e;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    new-instance v0, Lcom/c/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The variable name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " contains invalid characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    iput-object v0, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    new-instance v0, Lcom/c/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The variable name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot contain spaces (leading or trailing)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 207
    :cond_4
    return-void
.end method


# virtual methods
.method public a()Lcom/c/a/a/a/a;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/c/a/a/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/c/a/a/a/e;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VarSpec [modifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/e;->b:Lcom/c/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", variableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
