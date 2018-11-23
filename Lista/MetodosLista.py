class multipleArray:

	# Inicializamos los atributos de la nueva lista
	def __init__(self,initialCapacity):
		self.length = initialCapacity
		self.numElems = 0
		self.key = self.length * [9]
		self.free = 0
		self.head = 9
		
		self.next = self.length * [9]
		for i in range(0,initialCapacity - 1):
			self.next[i] = i + 1

		self.prev = self.length * [9]
		for i in range(1,initialCapacity):
			self.prev[i] = i - 1

	# Metodo que contiene los parametros de impresion en pantalla
	def __str__(self):
		return "List: lenght=%d, numElems=%d, free=%s, head=%s \n next =%s \n key  =%s \n prev =%s" % (self.length,self.numElems,str(self.free), str(self.head), str(self.next), str(self.key), str(self.prev))

	# Metodo que verifica y retorna el proximo espacio libre a utilizar
	def AllocateObject(self):
		# Verificamos si hay espacio disponible
		if self.free == 9:
			return 9

		# Seleccionamos el primero objeto libre de la lista libre
		# Reasignamos el apuntador de la lista libre
		freeSpace = self.free
		self.free = self.next[self.free]

		# Retornamos el apuntador del espacio disponible
		return freeSpace

	# Metodo que inserta un nuevo objeto libre en la lista libre
	def FreeObject(self, pointer: int):
		self.prev[pointer] = 9
		self.next[pointer] = self.free
		self.key[pointer] = 9
		self.free = pointer

	# Metodo que inserta un objeto dentro de la lista
	#Los objetos se insertan al final de la lista
	def InsertObject(self, cont: int):
		# Asignamos a la variable freeSpace el apuntador del primer espacio libre encontrado
		freeSpace = self.AllocateObject()
		
		# Verificamos si hay espacio para insertar un nuevo objeto
		if freeSpace == 9:
			print("Out of space")
			return
		
		# Ubicamos el nuevo objeto al inicio de la lista
		self.key[freeSpace] = cont
		self.prev[freeSpace] = self.head

		if self.head != 9:
			self.next[self.head] = freeSpace

		self.next[freeSpace] = 9
		self.head = freeSpace

		# Actualizamos la cantidad de objetos no libres
		self.numElems += 1

	# Metodo que elemina un objeto dentro de la lista
	def DeleteObject(self, pointer: int):
		# Verificamos si la lista esta vacia
		if self.head == 9:
			print("The list is already empty")
			return

		# Verificamos si el apuntador esta dentro de la lista
		if pointer >= self.length:
			print("The pointer is out of range")
			return 

		# Quitamos el objeto y reacomodamos la lista
		if self.prev[pointer] != 9:
			self.next[self.prev[pointer]] = self.next[pointer]

		if self.next[pointer] != 9:
			self.prev[self.next[pointer]] = self.prev[pointer]

		if self.prev[pointer] == 9:
			self.head = self.next[pointer]

		# Actualizamos la lista libre
		self.FreeObject(pointer)

		# Actualizamos la cantidad de objetos no libres
		self.numElems -= 1

# Metodo que ordena la lista, primero con los objetos no libres y luego con los objetos libres
def CompatifyList(L: multipleArray):
	k = L.length - 1
	freeSpace = L.AllocateObject()
	while(freeSpace != 9):
		# Verificamos si el espacio libre es distinto de si mismo
		if k != freeSpace and L.key[k] != 9:
			# Asignamos los nuevos apuntadores a los objetos enlazados con los objetos a intercambiar. 
			if (L.prev[k] != 9):
				L.next[L.prev[k]] = freeSpace

			if (L.next[freeSpace] != 9):
				L.prev[L.next[freeSpace]] = k

			# Intercambiamos el objeto free con el ultimo objeto que no es libre
			L.next[k],L.next[freeSpace] = L.next[freeSpace],L.next[k]
			L.key[k],L.key[freeSpace] = L.key[freeSpace],L.key[k]
			L.prev[k],L.prev[freeSpace] = L.prev[freeSpace],L.prev[k]

			# Ajustamos el head si este es intercambiado	
			if L.head == k:
				L.head,freeSpace = freeSpace,L.head

			print('---------------------------')
			print(k)
			print(L)
			print('---------------------------')

		freeSpace = L.AllocateObject()
		k -= 1