import unittest
from locusts import introduce_locusts

class TestLocusts(unittest.TestCase):
		def test_introduce_locusts(self):
				self.assertIsNone(introduce_locusts())

if __name__ == '__main__':
		unittest.main()