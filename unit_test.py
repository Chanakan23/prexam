import unittest
import app

class TestApp(unittest.TestCase):
    def true_when_x_is_17(self):
        self.assertTrue(app.is_prime(17))

    def false_when_x_is_36(self):
        self.assertFalse(app.is_prime(36))

    def true_when_x_is_13219(self):
        self.assertTrue(app.is_prime(13219))


if __name__ == '__main__':
    unittest.main()