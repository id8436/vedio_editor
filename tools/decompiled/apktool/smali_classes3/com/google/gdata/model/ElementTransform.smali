.class final Lcom/google/gdata/model/ElementTransform;
.super Lcom/google/gdata/model/Transform;
.source "ElementTransform.java"


# static fields
.field static final EMPTY:Lcom/google/gdata/model/ElementTransform;


# instance fields
.field private final adaptations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field private final contentRequired:Ljava/lang/Boolean;

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final flattened:Z

.field private final properties:Ljava/lang/Object;

.field private final validator:Lcom/google/gdata/model/ElementValidator;

.field private final virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0}, Lcom/google/gdata/model/ElementTransform;-><init>()V

    sput-object v0, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/google/gdata/model/Transform;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 115
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 116
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 117
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 121
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 122
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/ElementCreatorImpl;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Transform;-><init>(Lcom/google/gdata/model/MetadataCreatorImpl;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 134
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getContentRequired()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getValidator()Lcom/google/gdata/model/ElementValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 136
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getProperties()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getVirtualElementHolder()Lcom/google/gdata/model/VirtualElementHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 138
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->isFlattened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 139
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 140
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 141
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getAdaptations()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 142
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementTransform;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementTransform;",
            "Lcom/google/gdata/model/ElementTransform;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0, p2, p3}, Lcom/google/gdata/model/Transform;-><init>(Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/Transform;)V

    .line 247
    new-array v0, v4, [Lcom/google/gdata/model/ElementMetadata$Cardinality;

    iget-object v3, p2, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    aput-object v3, v0, v1

    iget-object v3, p3, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 248
    iget-object v0, p2, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 249
    new-array v0, v4, [Lcom/google/gdata/model/ElementValidator;

    iget-object v3, p2, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    aput-object v3, v0, v1

    iget-object v3, p3, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementValidator;

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 250
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    aput-object v3, v0, v1

    iget-object v3, p3, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 251
    new-array v0, v4, [Lcom/google/gdata/model/VirtualElementHolder;

    iget-object v3, p2, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    aput-object v3, v0, v1

    iget-object v3, p3, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/VirtualElementHolder;

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 253
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->isFlattened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/google/gdata/model/ElementTransform;->isFlattened()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 259
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 260
    invoke-virtual {p3}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    iget-object v0, p2, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/QName;

    .line 264
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 253
    goto :goto_0

    .line 268
    :cond_3
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 270
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 271
    invoke-virtual {p3}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    iget-object v0, p2, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/QName;

    .line 275
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 279
    :cond_5
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 281
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 282
    invoke-virtual {p3}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 284
    iget-object v0, p2, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 287
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p1, v0}, Lcom/google/gdata/model/ElementTransform;->isValidAdaptation(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 289
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 292
    :cond_7
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 293
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/model/ElementTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/gdata/model/Transform;-><init>(Ljava/lang/Iterable;)V

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v2, 0x0

    .line 157
    const/4 v3, 0x0

    .line 158
    const/4 v6, 0x0

    .line 160
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 161
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v12

    .line 162
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v13

    .line 164
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v5

    move-object v9, v7

    move-object v5, v2

    move-object v7, v4

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/gdata/model/ElementTransform;

    .line 165
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-eqz v2, :cond_c

    .line 166
    iget-object v10, v4, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 168
    :goto_1
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 169
    iget-object v9, v4, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 171
    :goto_2
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    if-eqz v2, :cond_a

    .line 172
    iget-object v8, v4, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 174
    :goto_3
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 175
    iget-object v7, v4, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 177
    :goto_4
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-eqz v2, :cond_8

    .line 178
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    move-object v5, v2

    .line 180
    :goto_5
    iget-boolean v2, v4, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x1

    move v6, v2

    .line 184
    :cond_0
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/QName;

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 187
    iget-object v0, v2, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v16, v0

    sget-object v17, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 188
    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_1
    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 193
    :cond_2
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/QName;

    .line 195
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 196
    iget-object v0, v2, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v16, v0

    sget-object v17, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 197
    invoke-interface {v12, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_3
    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 202
    :cond_4
    iget-object v2, v4, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementKey;

    .line 204
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/gdata/model/ElementTransform;->isValidAdaptation(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 205
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_6
    move-object v3, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    .line 208
    goto/16 :goto_0

    .line 211
    :cond_7
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 212
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 213
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 214
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 215
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 216
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 217
    invoke-static {v11}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 218
    invoke-static {v12}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 219
    invoke-static {v13}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 220
    return-void

    :cond_8
    move-object v5, v3

    goto/16 :goto_5

    :cond_9
    move-object v7, v5

    goto/16 :goto_4

    :cond_a
    move-object v8, v7

    goto/16 :goto_3

    :cond_b
    move-object v9, v8

    goto/16 :goto_2

    :cond_c
    move-object v10, v9

    goto/16 :goto_1
.end method

.method static create(Lcom/google/gdata/model/ElementCreatorImpl;)Lcom/google/gdata/model/ElementTransform;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/ElementTransform;-><init>(Lcom/google/gdata/model/ElementCreatorImpl;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    .line 53
    :cond_0
    return-object v0
.end method

.method static create(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)Lcom/google/gdata/model/ElementTransform;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/model/ElementTransform;",
            ">;)",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/model/ElementTransform;-><init>(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)V

    .line 65
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v0, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    .line 68
    :cond_0
    return-object v0
.end method

.method private static isValidAdaptation(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 303
    if-ne v0, v1, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method static mergeSource(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementTransform;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getSource()Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/google/gdata/model/TransformKey;->getParent()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/gdata/model/ElementTransform;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementTransform;)V

    move-object p2, v0

    .line 89
    :cond_0
    return-object p2
.end method


# virtual methods
.method getAdaptations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    return-object v0
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    return-object v0
.end method

.method getContentRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    return-object v0
.end method

.method getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method getValidator()Lcom/google/gdata/model/ElementValidator;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    return-object v0
.end method

.method getVirtualElementHolder()Lcom/google/gdata/model/VirtualElementHolder;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/google/gdata/model/Transform;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFlattened()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    return v0
.end method

.method toMetadata(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/google/gdata/model/ElementMetadataImpl;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/model/ElementMetadataImpl;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)V

    return-object v0
.end method
