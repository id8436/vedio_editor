.class Lorg/mortbay/util/StringMap$NullEntry;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final this$0:Lorg/mortbay/util/StringMap;


# direct methods
.method private constructor <init>(Lorg/mortbay/util/StringMap;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lorg/mortbay/util/StringMap$NullEntry;->this$0:Lorg/mortbay/util/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/util/StringMap;Lorg/mortbay/util/StringMap$1;)V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lorg/mortbay/util/StringMap$NullEntry;-><init>(Lorg/mortbay/util/StringMap;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/mortbay/util/StringMap$NullEntry;->this$0:Lorg/mortbay/util/StringMap;

    iget-object v0, v0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lorg/mortbay/util/StringMap$NullEntry;->this$0:Lorg/mortbay/util/StringMap;

    iget-object v0, v0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mortbay/util/StringMap$NullEntry;->this$0:Lorg/mortbay/util/StringMap;

    iput-object p1, v1, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "[:null="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/util/StringMap$NullEntry;->this$0:Lorg/mortbay/util/StringMap;

    iget-object v1, v1, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
