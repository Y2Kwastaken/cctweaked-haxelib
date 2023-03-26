package cc.extras.world;

import cc.Turtle.InspectResult;
import lua.Table;

class Block {
	public static final Name:String = "name";
	public static final State:String = "state";
	public static final Tags:String = "tags";

	private final blockDetail:InspectResult;
	private final info:Map<String, Dynamic>;
	private final name:String;
	private final namespace:String;
	private final state:Map<String, Dynamic>;
	private final tags:Map<String, Bool>;

	/**
	 * Creates a new block from a block detail.
	 * Block detail is a result of turtle.inspect() function.
	 * @param blockDetail Block detail
	 */
	function new(blockDetail:InspectResult) {
		if (!blockDetail.success) {
			this.blockDetail = null;
			this.info = new Map<String, Dynamic>();
			this.name = "air";
			this.namespace = "minecraft";
			this.state = new Map<String, Dynamic>();
			this.tags = [];
		} else {
			this.blockDetail = blockDetail;
			this.info = Table.toMap(blockDetail.result);
			final nameAndNamespaced = this.info.get(Block.Name).split(":");
			this.name = nameAndNamespaced[1];
			this.namespace = nameAndNamespaced[0];
			this.state = Table.toMap(this.info.get(Block.State));
			this.tags = Table.toMap(this.info.get(Block.Tags));
		}
	}

	/**
	 * Gets the name of the block. for example minecraft:stone would return stone.
	 * @return String name of the block
	 */
	public function getName():String {
		return this.name;
	}

	/**
	 * Gets the namespace of the block for example minecraft:stone would return minecraft.
	 * @return String
	 */
	public function getNamespace():String {
		return this.namespace;
	}

	/**
	 * Checks if the state of a block contains a key of the given name.
	 * @param key  Key to check
	 * @return Dynamic value of the key
	 */
	public function getState(key:String):Dynamic {
		return this.state.get(key);
	}

	/**
	 * Checks if the state of a block contains a key of the given name.
	 * @param key Key to check
	 * @return Bool true if the key exists
	 */
	public function hasState(key:String):Bool {
		return this.state.exists(key);
	}

	/**
	 * Gets all the states of the block.
	 * @return Map<String, Dynamic> of all the states
	 */
	public function getAllStates():Map<String, Dynamic> {
		return this.state;
	}

	/**
	 * Checks if the block has a tag of the given name. for example minecraft:stone has tag forge:stone
	 * @param tag  Tag to check
	 * @return Bool true if the tag exists
	 */
	public function hasTag(tag:String):Bool {
		return this.tags.exists(tag);
	}

	/**
	 * Gets all the tags of the block.
	 * @return Map<String, Dynamic> of all the tags
	 */
	public function getAllTags():Map<String, Dynamic> {
		return this.tags;
	}

	/**
	 * Creates a new block from a block detail. If the block detail is not a success, returns null.
	 * @param blockDetail  Block detail
	 * @return Block which could be air
	 */
	@:notNull
	public static function create(blockDetail:InspectResult):Block {
		return new Block(blockDetail);
	}
}
