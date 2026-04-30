.class public Lcom/c/a/a/e;
.super Ljava/lang/Object;
.source "UriTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:[C

.field private static final d:Ljava/util/BitSet;


# instance fields
.field transient a:Lorg/joda/time/format/DateTimeFormatter;

.field protected b:Ljava/text/DateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/c/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Lcom/c/a/a/b;

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/c/a/a/e;->c:[C

    .line 104
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lcom/c/a/a/e;->d:Ljava/util/BitSet;

    .line 108
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/c/a/a/e;->c:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 110
    sget-object v1, Lcom/c/a/a/e;->d:Ljava/util/BitSet;

    sget-object v2, Lcom/c/a/a/e;->c:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void

    .line 98
    nop

    :array_0
    .array-data 2
        0x2bs
        0x23s
        0x2es
        0x2fs
        0x3bs
        0x3fs
        0x26s
        0x21s
        0x3ds
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/e;->a:Lorg/joda/time/format/DateTimeFormatter;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->b:Ljava/text/DateFormat;

    .line 128
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/e;->f:Ljava/util/Map;

    .line 153
    iput-object p1, p0, Lcom/c/a/a/e;->e:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/c/a/a/e;->c()V

    .line 155
    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/c/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/c/a/a/e;

    invoke-direct {v0, p0}, Lcom/c/a/a/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/lang/String;Lcom/c/a/a/a/f;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    .line 945
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    if-ne v0, v1, :cond_0

    .line 947
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 948
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 950
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 957
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->c()Lcom/c/a/a/f;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    if-ne v0, v1, :cond_2

    .line 959
    invoke-static {p3}, Lcom/c/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 971
    :goto_0
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "&"

    invoke-virtual {p1}, Lcom/c/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 975
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 993
    :cond_1
    :goto_1
    return-object v0

    .line 963
    :cond_2
    :try_start_1
    invoke-static {p3}, Lcom/c/a/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 968
    new-instance v1, Lcom/c/a/a/m;

    const-string/jumbo v2, "Could not expand variable due to a problem URI encoding the value."

    invoke-direct {v1, v2, v0}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 977
    :cond_3
    sget-object v1, Lcom/c/a/a/a/f;->a:Lcom/c/a/a/a/f;

    if-ne p4, v1, :cond_4

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 984
    :cond_4
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v1

    sget-object v2, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-ne v1, v2, :cond_1

    .line 985
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/c/a/a/a/f;->c:Lcom/c/a/a/a/f;

    if-eq p4, v1, :cond_1

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/a/b;",
            "Lcom/c/a/a/a/e;",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    .line 795
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    const/4 v0, 0x0

    .line 840
    :goto_0
    return-object v0

    .line 800
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 801
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 802
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v1

    sget-object v4, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-eq v1, v4, :cond_2

    .line 805
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 807
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 809
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 810
    invoke-direct {p0, v1}, Lcom/c/a/a/e;->c(Ljava/lang/Object;)Z

    .line 812
    invoke-direct {p0, v1}, Lcom/c/a/a/e;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    const-string/jumbo v4, ","

    invoke-direct {p0, v4, v1}, Lcom/c/a/a/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 828
    :goto_2
    sget-object v4, Lcom/c/a/a/a/f;->b:Lcom/c/a/a/a/f;

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/lang/String;Lcom/c/a/a/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 818
    :cond_3
    invoke-direct {p0, v1}, Lcom/c/a/a/e;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 820
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 824
    :cond_4
    new-instance v0, Lcom/c/a/a/m;

    const-string/jumbo v1, "Collections or other complex types are not supported in collections."

    invoke-direct {v0, v1}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_5
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v1

    sget-object v3, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-eq v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/c/a/a/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 833
    invoke-direct {p0, v0, v2}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 834
    sget-object v1, Lcom/c/a/a/a/b;->f:Lcom/c/a/a/a/b;

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_6

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 838
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 840
    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/a/b;",
            "Lcom/c/a/a/a/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    .line 871
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    :cond_0
    const/4 v0, 0x0

    .line 925
    :goto_0
    return-object v0

    .line 876
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 877
    const-string/jumbo v0, "="

    .line 878
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v1

    sget-object v2, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-eq v1, v2, :cond_9

    .line 880
    const-string/jumbo v0, ","

    move-object v2, v0

    .line 882
    :goto_1
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v1

    sget-object v3, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-eq v1, v3, :cond_8

    .line 885
    invoke-virtual {p1}, Lcom/c/a/a/a/b;->e()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 887
    :goto_2
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 890
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/c/a/a/e;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 894
    const-string/jumbo v6, ","

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/c/a/a/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 908
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/c/a/a/a/f;->c:Lcom/c/a/a/a/f;

    invoke-direct {p0, p1, p2, v1, v7}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/lang/String;Lcom/c/a/a/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/c/a/a/a/f;->c:Lcom/c/a/a/a/f;

    .line 909
    invoke-direct {p0, p1, p2, v0, v6}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/lang/String;Lcom/c/a/a/a/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 898
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/c/a/a/e;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 900
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 904
    :cond_3
    new-instance v0, Lcom/c/a/a/m;

    const-string/jumbo v1, "Collections or other complex types are not supported in collections."

    invoke-direct {v0, v1}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_4
    invoke-virtual {p2}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/c/a/a/a/b;->e:Lcom/c/a/a/a/b;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/c/a/a/a/b;->f:Lcom/c/a/a/a/b;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/c/a/a/a/b;->g:Lcom/c/a/a/a/b;

    if-ne p1, v0, :cond_7

    .line 917
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 918
    sget-object v1, Lcom/c/a/a/a/b;->f:Lcom/c/a/a/a/b;

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_6

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 922
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 925
    :cond_7
    invoke-direct {p0, v3, v4}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v3, v0

    goto/16 :goto_2

    :cond_9
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/c/a/a/b;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/c/a/a/e;->b(Lcom/c/a/a/b;Ljava/util/List;)[I

    move-result-object v2

    .line 1062
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1063
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    aget v0, v2, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1067
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1068
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    aget v0, v2, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1070
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 1072
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :goto_3
    invoke-virtual {p1}, Lcom/c/a/a/b;->c()Ljava/util/List;

    move-result-object v0

    aget v5, v2, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/e;

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1072
    :cond_0
    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1076
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1081
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 1082
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1084
    :cond_3
    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v0

    sget-object v5, Lcom/c/a/a/a/b;->b:Lcom/c/a/a/a/b;

    if-eq v0, v5, :cond_4

    .line 1085
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_4
    aget v0, v2, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1085
    :cond_5
    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1091
    :cond_6
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, v3}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/c/a/a/b;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v1

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/c/a/a/e;->b(Lcom/c/a/a/b;Z)Ljava/util/List;

    move-result-object v0

    .line 591
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/c/a/a/e;->a(Lcom/c/a/a/b;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_0
    if-eqz v0, :cond_2

    .line 594
    if-nez p2, :cond_0

    sget-object v2, Lcom/c/a/a/a/b;->b:Lcom/c/a/a/a/b;

    if-eq v1, v2, :cond_0

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/c/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    :cond_0
    :goto_1
    return-object v0

    .line 591
    :cond_1
    invoke-virtual {v1}, Lcom/c/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1024
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return-object v0

    .line 1029
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1031
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 1035
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1037
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1038
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1040
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    .line 1043
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1048
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 735
    if-nez p1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 739
    :cond_1
    instance-of v2, p1, Ljava/util/Collection;

    if-nez v2, :cond_2

    instance-of v2, p1, Ljava/util/Map;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 741
    goto :goto_0

    .line 743
    :cond_3
    invoke-direct {p0, p1}, Lcom/c/a/a/e;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 745
    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 999
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 1001
    check-cast p2, Ljava/util/Collection;

    .line 1002
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1005
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1007
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    :goto_1
    return-object v0

    .line 1009
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1012
    invoke-direct {p0, p1, v0}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1014
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lcom/c/a/a/b;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/b;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 615
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v6

    .line 617
    invoke-virtual {p1}, Lcom/c/a/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/e;

    .line 619
    iget-object v1, p0, Lcom/c/a/a/e;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 621
    iget-object v1, p0, Lcom/c/a/a/e;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 625
    if-eqz v1, :cond_f

    .line 627
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 629
    instance-of v2, v1, [[C

    if-eqz v2, :cond_1

    .line 631
    check-cast v1, [[C

    check-cast v1, [[C

    .line 632
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    array-length v8, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_2

    aget-object v9, v1, v3

    .line 635
    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 639
    :cond_1
    instance-of v2, v1, [C

    if-eqz v2, :cond_3

    .line 641
    check-cast v1, [C

    check-cast v1, [C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 652
    :cond_2
    :goto_2
    invoke-direct {p0, v2}, Lcom/c/a/a/e;->a(Ljava/lang/Object;)Z

    move-result v1

    .line 653
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v3

    sget-object v8, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    if-ne v3, v8, :cond_4

    .line 655
    new-instance v0, Lcom/c/a/a/m;

    const-string/jumbo v1, "Prefix modifiers are not applicable to variables that have composite values."

    invoke-direct {v0, v1}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_3
    invoke-direct {p0, v1}, Lcom/c/a/a/e;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 659
    :cond_4
    if-eqz v1, :cond_e

    .line 662
    instance-of v1, v2, Lcom/c/a/a/j;

    if-eqz v1, :cond_6

    move-object v1, v2

    .line 664
    check-cast v1, Lcom/c/a/a/j;

    .line 670
    :goto_3
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v3

    sget-object v8, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-ne v3, v8, :cond_7

    .line 672
    invoke-interface {v1}, Lcom/c/a/a/j;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 683
    :goto_4
    instance-of v1, v2, Ljava/util/Date;

    if-eqz v1, :cond_d

    .line 685
    iget-object v1, p0, Lcom/c/a/a/e;->a:Lorg/joda/time/format/DateTimeFormatter;

    new-instance v8, Lorg/joda/time/DateTime;

    check-cast v2, Ljava/util/Date;

    invoke-direct {v8, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v1

    .line 690
    :goto_5
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 692
    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v6, v0, v1}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 715
    :cond_5
    :goto_6
    if-eqz v3, :cond_0

    .line 717
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 668
    :cond_6
    invoke-static {v2, v0}, Lcom/c/a/a/a/d;->a(Ljava/lang/Object;Lcom/c/a/a/a/e;)Lcom/c/a/a/j;

    move-result-object v1

    goto :goto_3

    .line 674
    :cond_7
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v3

    sget-object v8, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    if-eq v3, v8, :cond_e

    .line 676
    invoke-interface {v1}, Lcom/c/a/a/j;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_4

    .line 697
    :cond_8
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_9

    .line 699
    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v6, v0, v1}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 704
    :cond_9
    if-nez v1, :cond_a

    move-object v3, v4

    .line 706
    goto :goto_6

    .line 711
    :cond_a
    if-nez v3, :cond_5

    .line 713
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/c/a/a/a/f;->a:Lcom/c/a/a/a/f;

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/c/a/a/e;->a(Lcom/c/a/a/a/b;Lcom/c/a/a/a/e;Ljava/lang/String;Lcom/c/a/a/a/f;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 721
    :cond_b
    if-eqz p2, :cond_0

    .line 723
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 726
    :cond_c
    return-object v5

    :cond_d
    move-object v1, v2

    goto :goto_5

    :cond_e
    move-object v3, v4

    goto :goto_4

    :cond_f
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    const/4 v0, 0x1

    .line 782
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 577
    sget-object v0, Lcom/c/a/a/e;->d:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/c/a/a/b;Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 1129
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    .line 1130
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1131
    invoke-virtual {p1}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v3

    sget-object v5, Lcom/c/a/a/a/b;->f:Lcom/c/a/a/a/b;

    if-ne v3, v5, :cond_2

    .line 1133
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v5, v3, -0x1

    .line 1134
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1136
    add-int/lit8 v3, v2, 0x1

    aput v0, v4, v2

    move v2, v3

    .line 1138
    :cond_0
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1140
    add-int/lit8 v3, v1, -0x1

    aput v5, v4, v1

    move v1, v3

    .line 1130
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1145
    :cond_2
    aput v0, v4, v0

    goto :goto_1

    .line 1148
    :cond_3
    return-object v4
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    .line 850
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 852
    new-instance v0, Lcom/c/a/a/m;

    const-string/jumbo v1, "Nested data structures are not supported."

    invoke-direct {v0, v1}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    :cond_1
    const/4 v0, 0x1

    .line 859
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    .line 1102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 1104
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1106
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 1107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    new-instance v0, Lcom/c/a/a/m;

    const-string/jumbo v1, "Multi-dimenesional arrays are not supported."

    invoke-direct {v0, v1}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_1
    return-object v1
.end method

.method private f()V
    .locals 4

    .prologue
    .line 313
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 314
    iget-object v0, p0, Lcom/c/a/a/e;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/g;

    .line 316
    instance-of v3, v0, Lcom/c/a/a/b;

    if-eqz v3, :cond_0

    .line 318
    check-cast v0, Lcom/c/a/a/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/c/a/a/b;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/a/b;

    iput-object v0, p0, Lcom/c/a/a/e;->h:[Lcom/c/a/a/b;

    .line 323
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/c/a/a/e;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/c/a/a/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return-object p0
.end method

.method public a()[Lcom/c/a/a/b;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/c/a/a/e;->h:[Lcom/c/a/a/b;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    iget-object v0, p0, Lcom/c/a/a/e;->i:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 284
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 285
    invoke-virtual {p0}, Lcom/c/a/a/e;->a()[Lcom/c/a/a/b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 287
    invoke-virtual {v0}, Lcom/c/a/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/e;

    .line 289
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 292
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/a/e;->i:[Ljava/lang/String;

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/c/a/a/e;->i:[Ljava/lang/String;

    return-object v0
.end method

.method protected c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/c/a/a/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/c/a/a/a/c;

    invoke-direct {v1}, Lcom/c/a/a/a/c;-><init>()V

    .line 304
    invoke-virtual {v1, v0}, Lcom/c/a/a/a/c;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/e;->g:Ljava/util/LinkedList;

    .line 305
    invoke-direct {p0}, Lcom/c/a/a/e;->f()V

    .line 306
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/m;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/c/a/a/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v3, p0, Lcom/c/a/a/e;->h:[Lcom/c/a/a/b;

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 426
    invoke-direct {p0, v5, v1}, Lcom/c/a/a/e;->a(Lcom/c/a/a/b;Z)Ljava/lang/String;

    move-result-object v6

    .line 427
    invoke-virtual {v5}, Lcom/c/a/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-object v2
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/c/a/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
