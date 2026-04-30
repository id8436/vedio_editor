.class public Lcom/c/a/a/a;
.super Ljava/lang/Object;
.source "DefaultVarExploder.java"

# interfaces
.implements Lcom/c/a/a/j;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/k;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    .line 94
    invoke-virtual {p0, p1}, Lcom/c/a/a/a;->a(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-nez p0, :cond_1

    .line 220
    const/4 p0, 0x0

    .line 231
    :cond_0
    :goto_0
    return-object p0

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 230
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 231
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 245
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 247
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 249
    iget-object v5, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    const-class v5, Lcom/c/a/a/h;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    iget-object v0, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 255
    :cond_1
    const-class v5, Lcom/c/a/a/l;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    const-class v5, Lcom/c/a/a/l;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/l;

    invoke-interface {v0}, Lcom/c/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v5, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    iget-object v6, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/c/a/a/a;->a(Ljava/lang/Class;)V

    .line 273
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 154
    const-string/jumbo v0, "get"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    const-string/jumbo v0, "get"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 158
    :goto_0
    const-string/jumbo v2, "is"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    const-string/jumbo v0, "is"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 161
    :goto_1
    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_2
    return-void

    .line 166
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/c/a/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    .line 181
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 183
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 191
    array-length v3, v2

    if-gt v3, v5, :cond_0

    array-length v3, v2

    if-ne v3, v5, :cond_3

    aget-object v1, v2, v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 197
    :cond_3
    const-class v1, Lcom/c/a/a/h;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/c/a/a/a;->b(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    const-class v2, Lcom/c/a/a/l;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    const-class v0, Lcom/c/a/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/l;

    invoke-interface {v0}, Lcom/c/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_4
    if-eqz v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/k;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    new-instance v1, Lcom/c/a/a/k;

    invoke-direct {v1, v0}, Lcom/c/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :catch_1
    move-exception v0

    .line 298
    new-instance v1, Lcom/c/a/a/k;

    invoke-direct {v1, v0}, Lcom/c/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    :catch_2
    move-exception v0

    .line 302
    new-instance v1, Lcom/c/a/a/k;

    invoke-direct {v1, v0}, Lcom/c/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 213
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/k;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/c/a/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The value must an object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/a;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/c/a/a/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 139
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 141
    invoke-direct {p0, v4}, Lcom/c/a/a/a;->a(Ljava/lang/reflect/Method;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_3
    invoke-direct {p0, v1}, Lcom/c/a/a/a;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/k;
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/c/a/a/a;->a:Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/c/a/a/a;->c()V

    .line 116
    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/k;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/c/a/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
